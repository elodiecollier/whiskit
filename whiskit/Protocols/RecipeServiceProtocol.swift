//
//  RecipeServiceProtocol.swift
//  whiskit
//
//  Created by Elodie Collier on 10/5/24.
//

import Foundation

protocol RecipeServiceProtocol {
    func doesContentExist(field: String?) -> Bool
    func recipeImage(recipeImage: String?) -> String
}
