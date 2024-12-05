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
    var category: CategoryDTO
    var notes: String?
    
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
        category: CategoryDTO.entree,
        notes: "You can garnish with parsley for a pop of color!"
    )
    
    static let `default` = RecipeDTO(
        id: 2,
        name: "Default",
        ingredients: [],
        recipeSteps: [],
        category: CategoryDTO.entree
    )
    
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
        category: CategoryDTO.entree
    )
    
    static let `icedVanillaChai` = RecipeDTO(
        id: 4,
        name: "Iced Vanilla Chai",
        image: "vanillaIcedChaiLatte",
        ingredients: [
            IngredientDTO(id: 101, text: "3 tablespoons of heavy whipping cream"),
            IngredientDTO(id: 102, text: "2 tablespoons of milk"),
            IngredientDTO(id: 103, text: "1 tablespoon vanilla flavored syrup"),
            IngredientDTO(id: 104, text: "Sprinkle of ground cinnamon"),
            IngredientDTO(id: 105, text: "1/2 cup of chai concentrate"),
            IngredientDTO(id: 106, text: "Ice"),
        ],
        recipeSteps: [
            RecipeStepDTO(id: 1101, stepNumber: 1, text: "In a cup or container, add your heavy whipping cream, milk, syrup, and cinnamon. Froth for 20-30 seconds, or until mixture thickens."),
            RecipeStepDTO(id: 1102, stepNumber: 2, text: "In a separte cup, add ice and chai concentrate. Pour frothed mixture on top."),
            RecipeStepDTO(id: 1103, stepNumber: 3, text: "Sprinkle cinnamon on top for aesthetic."),
        ],
        category: CategoryDTO.beverage
    )
    
    static let `offlineRecipes` = [
        RecipeDTO.garlicButterChickenTenders,
        RecipeDTO.pastaSalad,
        RecipeDTO.icedVanillaChai
    ]
}

