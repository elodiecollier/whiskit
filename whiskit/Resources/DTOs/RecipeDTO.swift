//
//  RecipeDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct RecipeDTO: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var link: String
    var ingredients: [IngredientDTO]
    var equipment: [EquipmentDTO]
    var recipeSteps: [RecipeStepDTO]
}
