//
//  RecipeService.swift
//  whiskit
//
//  Created by Elodie Collier on 10/5/24.
//

import Foundation

struct RecipeService: RecipeServiceProtocol {
    
    func doesContentExist(field: String?) -> Bool {
        return (field != nil && field != "")
    }
    
    func recipeImage(recipeImage: String?) -> String {
        if (doesContentExist(field: recipeImage)) {
            return recipeImage!
        }
        return "defaultFood"
    }
    
    func convertDecimalToFraction(valueToConvert: Decimal) -> String {
        let integerPart = Int(truncating: NSDecimalNumber(decimal: valueToConvert))
        let fractionalPart = valueToConvert - Decimal(integerPart)
        if fractionalPart == 0 {
            return "\(integerPart)"
        }
        let numerator = Int(truncating: NSDecimalNumber(decimal: fractionalPart * 1000))
        let denominator = 1000
        let gcdValue = gcd(numerator, denominator)
        let simplifiedNumerator = numerator / gcdValue
        let simplifiedDenominator = denominator / gcdValue
        let fractionString = "\(simplifiedNumerator)/\(simplifiedDenominator)"
        
        if integerPart == 0 {
            return fractionString
        } else {
            return "\(integerPart) and \(fractionString)"
        }
    }
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = abs(a)
        var b = abs(b)
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
}
