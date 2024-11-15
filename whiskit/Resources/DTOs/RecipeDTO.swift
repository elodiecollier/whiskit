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
    var prepTime: String?
    var cookTime: String?
    var ingredients: [IngredientDTO]
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
                text: "1 tablespoon olive oil"
            ),
            IngredientDTO(
                id: 2,
                text: "2 tablespoon butter"
            ),
            IngredientDTO(
                id: 3,
                text: "2 teaspoons Paprika"
            ),
            IngredientDTO(
                id: 4,
                text: "Chicken Breast Tenders"
            ),
            IngredientDTO(
                id: 5,
                text: "Salt"
            ),
            IngredientDTO(
                id: 6,
                text: "Ground Black Pepper"
            ),
            IngredientDTO(
                id: 7,
                text: "4 cloves of Garlic"
            ),
            IngredientDTO(
                id: 8,
                text: "1 teaspoon Italian Seasoning"
            ),
            IngredientDTO(
                id: 9,
                text: "Parsley (optional)"
            )
        ],
        recipeSteps: RecipeStepDTO.garlicButterChickenTendersSteps,
        tags: [TagDTO.entree, TagDTO.poultry],
        notes: "You can garnish with parsley for a pop of color!",
        isPublic: true
    )
    
    static let `default` = RecipeDTO(
        id: 2,
        name: "Default",
        ingredients: [],
        recipeSteps: [],
        isPublic: true)
    
    static let `pastaSalad` = RecipeDTO(
        id: 3,
        name: "Mediterranean Pasta Salad",
        image: "pastaSalad",
        ingredients: [
            IngredientDTO(id: 11, text: "1 clove of Garlic"),
            IngredientDTO(id: 12, text: "3 Medium Tomatoes on the Vine"),
            IngredientDTO(id: 13, text: "1/2 cup of fresh Basil"),
            IngredientDTO(id: 14, text: "3/4 cup of Olive Oil"),
            IngredientDTO(id: 15, text: "1 box of Penne"),
            IngredientDTO(id: 16, text: "1 tablespoon of Balsamic Vinegar"),
            IngredientDTO(id: 17, text: "12 ounces of Feta Cheese"),
        ],
        recipeSteps: [
            RecipeStepDTO(id: 11, stepNumber: 1, text: "Chop your tomatoes, garlic, basil and combine in a bowl with olive oil. Let stand for 1 hour."),
            RecipeStepDTO(id: 12, stepNumber: 2, text: "Cook your pasta using package directions."),
            RecipeStepDTO(id: 13, stepNumber: 3, text: "Stir the balsamic vingar into your tomato mixture."),
            RecipeStepDTO(id: 14, stepNumber: 4, text: "Toss tomato mixture with pasta and feta cheese in large bowl. Serve cold!")
        ],
        isPublic: true
    )
    
    static let `offlineRecipes` = [
        RecipeDTO.garlicButterChickenTenders,
        RecipeDTO.pastaSalad,
        RecipeDTO.default
    ]
}

