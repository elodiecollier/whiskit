//
//  RecipeDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct RecipeDTO: Identifiable {
    var id: Int
    var name: String
    var image: String?
    var link: String?
    var submittedBy: String?
    var ingredients: [IngredientDTO]
    var equipment: [EquipmentDTO]
    var recipeSteps: [RecipeStepDTO]
    var tags: [TagDTO]?
    var notes: String?
    var isPublic: Bool
    
    static let `garlicButterChickenTenders` = RecipeDTO(
        id: 1,
        name: "Garlic Butter Chicken Tenders",
        image: "chickenTenders",
        submittedBy: "Elodie Collier",
        ingredients: [
            IngredientDTO(
                id: 1,
                name: "Olive Oil",
                measurement: "1 tablespoon"
            ),
            IngredientDTO(
                id: 2,
                name: "Butter",
                measurement: "2 tablespoon",
                extraNotes: "Divided"
            ),
            IngredientDTO(
                id: 3,
                name: "Paprika"
            ),
            IngredientDTO(
                id: 4,
                name: "Chicken Breast Tenders",
                measurement: "1 pound"
            ),
            IngredientDTO(
                id: 5,
                name: "Salt"
            ),
            IngredientDTO(
                id: 6,
                name: "Pepper"
            ),
            IngredientDTO(
                id: 7,
                name: "Garlic",
                measurement: "4 cloves",
                extraNotes: "Crushed or Minced"
            ),
            IngredientDTO(
                id: 8,
                name: "Italian Seasoning"
            )
        ],
        equipment: [
            EquipmentDTO(
                id: 1,
                name: "Skillet"
            ),
        EquipmentDTO(
            id: 2,
            name: "Tongs"
        )
        ],
        recipeSteps: RecipeStepDTO.garlicButterChickenTendersSteps,
        tags: [TagDTO.entree, TagDTO.poultry],
        notes: "You can garnish with parsley for a pop of color!",
        isPublic: true
    )
    
    static let `offlineRecipes` = [
        RecipeDTO.garlicButterChickenTenders
    ]
}

