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
    var submittedBy: String?
    var ingredients: [IngredientDTO]
    var recipeSteps: [RecipeStepDTO]
    var category: CategoryDTO
    var helpfulRecipes: [RecipeDTO]?
    var helpfulBasics: [CookingBasicDTO]?
    
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
        category: CategoryDTO.entree
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
        category: CategoryDTO.beverage,
        helpfulBasics: [CookingBasicDTO.makeChaiConcentrateEasy]
    )
    
    static let `frenchApplePie` = RecipeDTO(
        id: 5,
        name: "French Apple Pie",
        image: "frenchApplePie",
        ingredients: [
            IngredientDTO(id: 3101, text: "1-2 apples, Granny Smith or your choice"),
            IngredientDTO(id: 3102, text: "2 large eggs"),
            IngredientDTO(id: 3103, text: "1/2 cup sugar"),
            IngredientDTO(id: 3104, text: "6 tablespoons butter melted"),
            IngredientDTO(id: 3105, text: "1 teaspoon vanilla extract"),
        ],
        recipeSteps: [
            RecipeStepDTO(id: 3101, stepNumber: 1, text: "Thinly slice your apples. Layer all around the pie crust in the shape of a flower."),
            RecipeStepDTO(id: 3102, stepNumber: 2, text: "Mix all other ingredients and pour over apples evenly."),
            RecipeStepDTO(id: 3103, stepNumber: 2, text: "Bake at 350F for 45 minutes or until set and browned."),
            
        ],
        category: CategoryDTO.dessert,
        helpfulRecipes: [RecipeDTO.frenchApplePieCrust]
    )
    
    static let `frenchApplePieCrust` = RecipeDTO(
        id: 6,
        name: "French Apple Pie Crust",
        ingredients: [
            IngredientDTO(id: 201, text: "1 cup all-purpose flour or gluten-free 1:1 baking flour"),
            IngredientDTO(id: 202, text: "1/2 cup butter room temperature, cut into cubes"),
            IngredientDTO(id: 203, text: "1/2 cup of sugar"),
            IngredientDTO(id: 204, text: "1 large egg"),
            IngredientDTO(id: 205, text: "pinch of salt"),
            ],
        recipeSteps: [
            RecipeStepDTO(id: 2101, stepNumber: 1, text: "Mix all the dry ingredients in a bowl."),
            RecipeStepDTO(id: 2102, stepNumber: 2, text: "Add the cubes of butter and egg, and use a fork to cut it into the flour mixture."),
            RecipeStepDTO(id: 2103, stepNumber: 3, text: "Put it into a pie dish and spread it out with your hands so that it is smooth and even."),
        ],
        category: CategoryDTO.dessert
    )
    
    static let `mapleBalsamicRoastedBrusselSprouts` = RecipeDTO(
        id: 7,
        name: "Maple Balsamic Roasted Brussel Sprouts",
        image: "mapleBalsamicRoastedBrusselSprouts",
        ingredients: [
            IngredientDTO(id: 4201, text: "1 pound brussel sprouts"),
            IngredientDTO(id: 4202, text: "2 tablespoons olive oil"),
            IngredientDTO(id: 4203, text: "1 teaspoon salt"),
            IngredientDTO(id: 4204, text: "1/2 teaspoon black pepper"),
            IngredientDTO(id: 4205, text: "2 tablespoons dried cranberries"),
            IngredientDTO(id: 4206, text: "2 tablespoons goat cheese, crumbled"),
            IngredientDTO(id: 4207, text: "Pecans"),
            IngredientDTO(id: 4208, text: "1/4 cup maple syrup"),
            IngredientDTO(id: 4209, text: "1 & 1/2 tablespoons balsamic vinegar"),
            IngredientDTO(id: 4210, text: "2 tablespoons dijon mustard"),
            ],
        recipeSteps: [
            RecipeStepDTO(id: 41011, stepNumber: 1, text: "Preheat over to 425 degrees."),
            RecipeStepDTO(id: 41012, stepNumber: 2, text: "Cut the brussel sprouts into halves and add them to a large bowl."),
            RecipeStepDTO(id: 41013, stepNumber: 3, text: "Toss the sprouts with olive oil, salt, and black pepper."),
            RecipeStepDTO(id: 41014, stepNumber: 4, text: "Spread the brussel sprouts on a baking pan, arranging them cut side down. Roast in the oven for 20-25 minutes, or until the edges of the brussel sprouts show hints of brown."),
            RecipeStepDTO(id: 41015, stepNumber: 5, text: "While the brussel sprouts roast, whisk the maple syrup, balsamic vinegar, and dijon mustard together."),
            RecipeStepDTO(id: 41016, stepNumber: 6, text: "Once the brussel sprouts are done, add them to a bowl with dried cranbarries and goat cheese. Drizzle the glaze over the top and toss until coated to your liking."),
            RecipeStepDTO(id: 41017, stepNumber: 7, text: "Serve with chopped pecans sprinkled over top."),
        ],
        category: CategoryDTO.side
    )
    
    static let `offlineRecipes` = [
        RecipeDTO.garlicButterChickenTenders,
        RecipeDTO.pastaSalad,
        RecipeDTO.icedVanillaChai,
        RecipeDTO.frenchApplePie,
        RecipeDTO.mapleBalsamicRoastedBrusselSprouts
    ]
}

