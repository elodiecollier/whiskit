//
//  RecipeDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct RecipeDTO {
    var name: String
    var image: String?
    var link: String?
    var submittedBy: String?
    var ingredients: [IngredientDTO]
    var equipment: [EquipmentDTO]
    var recipeSteps: [RecipeStepDTO]
    var tags: [TagDTO]?
    var notes: String?
    
    static let `garlicButterChickenTenders` = RecipeDTO(
        name: "Garlic Butter Chicken Tenders",
        submittedBy: "Elodie Collier",
        ingredients: [
            IngredientDTO(
                name: "Olive Oil",
                measurement: "1 tablespoon"
            ),
            IngredientDTO(
                name: "Butter",
                measurement: "2 tablespoon",
                extraNotes: "Divided"
            ),
            IngredientDTO(
                name: "Paprika"
            ),
            IngredientDTO(
                name: "Chicken Breast Tenders",
                measurement: "1 pound"
            ),
            IngredientDTO(
                name: "Salt"
            ),
            IngredientDTO(
                name: "Pepper"
            ),
            IngredientDTO(
                name: "Garlic",
                measurement: "4 cloves",
                extraNotes: "Crushed or Minced"
            ),
            IngredientDTO(
                name: "Italian Seasoning"
            )
        ],
        equipment: [
        EquipmentDTO(name: "Skillet"),
        EquipmentDTO(name: "Tongs")
        ],
        recipeSteps: RecipeStepDTO.garlicButterChickenTendersSteps,
        tags: [TagDTO.entree, TagDTO.poultry],
        notes: "You can garnish with parsley for a pop of color!"
    )
}

