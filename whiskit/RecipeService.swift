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
    
}
