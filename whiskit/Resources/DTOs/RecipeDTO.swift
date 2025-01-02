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
    var ingredients: [RecipeIngredientDTO]
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
            RecipeIngredientDTO(
                id: 1,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 1,
                ingredient: IngredientDTO.oliveOil
            ),
            RecipeIngredientDTO(
                id: 2,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.butter,
                note: "divided"
            ),
            RecipeIngredientDTO(
                id: 3,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 2,
                ingredient: IngredientDTO.paprika
            ),
            RecipeIngredientDTO(
                id: 4,
                unitOfMeasurement: UnitsOfMeasurementDTO.pounds,
                measurementValue: 1,
                ingredient: IngredientDTO.chickenBreastTenders
            ),
            RecipeIngredientDTO(
                id: 5,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 0.5,
                ingredient: IngredientDTO.salt
            ),
            RecipeIngredientDTO(
                id: 6,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 0.25,
                ingredient: IngredientDTO.blackPepper
            ),
            RecipeIngredientDTO(
                id: 7,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 4,
                ingredient: IngredientDTO.garlicCloves,
                note: "minced or crushed"
            ),
            RecipeIngredientDTO(
                id: 8,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 1,
                ingredient: IngredientDTO.italianSeasoning
            ),
            RecipeIngredientDTO(
                id: 9,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 1,
                ingredient: IngredientDTO.parsley,
                note: "chopped"
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
            RecipeIngredientDTO(
                id: 11,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 1,
                ingredient: IngredientDTO.garlicCloves
            ),
            RecipeIngredientDTO(
                id: 12,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 3,
                ingredient: IngredientDTO.tomatoesOnTheVine
            ),
            RecipeIngredientDTO(
                id: 13,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.5,
                ingredient: IngredientDTO.freshBasil
            ),
            RecipeIngredientDTO(
                id: 14,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.75,
                ingredient: IngredientDTO.oliveOil
            ),
            RecipeIngredientDTO(
                id: 15,
                unitOfMeasurement: UnitsOfMeasurementDTO.ounces,
                measurementValue: 16,
                ingredient: IngredientDTO.penne
            ),
            RecipeIngredientDTO(
                id: 16,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 1,
                ingredient: IngredientDTO.balsamicVinegar
            ),
            RecipeIngredientDTO(
                id: 17,
                unitOfMeasurement: UnitsOfMeasurementDTO.ounces,
                measurementValue: 12,
                ingredient: IngredientDTO.fetaCheese
            )
        ],
        recipeSteps: [
            RecipeStepDTO(id: 11, stepNumber: 1, text: "Chop your tomatoes, garlic, basil and combine in a bowl with olive oil. Let stand for 1 hour."),
            RecipeStepDTO(id: 12, stepNumber: 2, text: "Cook your pasta using package directions."),
            RecipeStepDTO(id: 13, stepNumber: 3, text: "Stir the balsamic vinegar into your tomato mixture."),
            RecipeStepDTO(id: 14, stepNumber: 4, text: "Toss tomato mixture with pasta and feta cheese in large bowl. Serve cold!")
        ],
        category: CategoryDTO.entree
    )
    
    static let `icedVanillaChai` = RecipeDTO(
        id: 4,
        name: "Iced Vanilla Chai",
        image: "vanillaIcedChaiLatte",
        ingredients: [
            RecipeIngredientDTO(
                id: 101,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 3,
                ingredient: IngredientDTO.heavyWhippingCream
            ),
            RecipeIngredientDTO(
                id: 102,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.milk
            ),
            RecipeIngredientDTO(
                id: 103,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 1,
                ingredient: IngredientDTO.vanillaCoffeeSyrup
            ),
            RecipeIngredientDTO(
                id: 104,
                unitOfMeasurement: UnitsOfMeasurementDTO.sprinkle,
                measurementValue: 1,
                ingredient: IngredientDTO.cinnamon
            ),
            RecipeIngredientDTO(
                id: 105,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.5,
                ingredient: IngredientDTO.chaiConcentrate
            ),
            RecipeIngredientDTO(
                id: 106,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 1,
                ingredient: IngredientDTO.salt,
                note: "ice"
            )
        ],
        recipeSteps: [
            RecipeStepDTO(id: 1101, stepNumber: 1, text: "In a cup or container, add your heavy whipping cream, milk, syrup, and cinnamon. Froth for 20-30 seconds, or until mixture thickens."),
            RecipeStepDTO(id: 1102, stepNumber: 2, text: "In a separate cup, add ice and chai concentrate. Pour frothed mixture on top."),
            RecipeStepDTO(id: 1103, stepNumber: 3, text: "Sprinkle cinnamon on top for aesthetic.")
        ],
        category: CategoryDTO.beverage,
        helpfulBasics: [CookingBasicDTO.makeChaiConcentrateEasy]
    )
    
    static let `frenchApplePie` = RecipeDTO(
        id: 5,
        name: "French Apple Pie",
        image: "frenchApplePie",
        ingredients: [
            RecipeIngredientDTO(
                id: 3101,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 1.5,
                ingredient: IngredientDTO.grannySmithApples
            ),
            RecipeIngredientDTO(
                id: 3102,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 2,
                ingredient: IngredientDTO.egg
            ),
            RecipeIngredientDTO(
                id: 3103,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.5,
                ingredient: IngredientDTO.sugar
            ),
            RecipeIngredientDTO(
                id: 3104,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 6,
                ingredient: IngredientDTO.butter,
                note: "melted"
            ),
            RecipeIngredientDTO(
                id: 3105,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 1,
                ingredient: IngredientDTO.vanillaExtract
            )
        ],
        recipeSteps: [
            RecipeStepDTO(id: 3101, stepNumber: 1, text: "Thinly slice your apples. Layer all around the pie crust in the shape of a flower."),
            RecipeStepDTO(id: 3102, stepNumber: 2, text: "Mix all other ingredients and pour over apples evenly."),
            RecipeStepDTO(id: 3103, stepNumber: 3, text: "Bake at 350F for 45 minutes or until set and browned.")
        ],
        category: CategoryDTO.dessert,
        helpfulRecipes: [RecipeDTO.frenchApplePieCrust]
    )
    
    static let `frenchApplePieCrust` = RecipeDTO(
        id: 6,
        name: "French Apple Pie Crust",
        ingredients: [
            RecipeIngredientDTO(
                id: 201,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 1,
                ingredient: IngredientDTO.allPurposeFlour
            ),
            RecipeIngredientDTO(
                id: 202,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.5,
                ingredient: IngredientDTO.butter,
                note: "room temperature, cut into cubes"
            ),
            RecipeIngredientDTO(
                id: 203,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.5,
                ingredient: IngredientDTO.sugar
            ),
            RecipeIngredientDTO(
                id: 204,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 1,
                ingredient: IngredientDTO.egg
            ),
            RecipeIngredientDTO(
                id: 205,
                unitOfMeasurement: UnitsOfMeasurementDTO.pinch,
                measurementValue: 1,
                ingredient: IngredientDTO.salt
            )
        ],
        recipeSteps: [
            RecipeStepDTO(id: 2101, stepNumber: 1, text: "Mix all the dry ingredients in a bowl."),
            RecipeStepDTO(id: 2102, stepNumber: 2, text: "Add the cubes of butter and egg, and use a fork to cut it into the flour mixture."),
            RecipeStepDTO(id: 2103, stepNumber: 3, text: "Put it into a pie dish and spread it out with your hands so that it is smooth and even.")
        ],
        category: CategoryDTO.dessert
    )
    
    static let `mapleBalsamicRoastedBrusselSprouts` = RecipeDTO(
        id: 7,
        name: "Maple Balsamic Roasted Brussel Sprouts",
        image: "mapleBalsamicRoastedBrusselSprouts",
        ingredients: [
            RecipeIngredientDTO(
                id: 4201,
                unitOfMeasurement: UnitsOfMeasurementDTO.pounds,
                measurementValue: 1,
                ingredient: IngredientDTO.brusselSprouts
            ),
            RecipeIngredientDTO(
                id: 4202,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.oliveOil
            ),
            RecipeIngredientDTO(
                id: 4203,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 1,
                ingredient: IngredientDTO.salt
            ),
            RecipeIngredientDTO(
                id: 4204,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 0.5,
                ingredient: IngredientDTO.blackPepper
            ),
            RecipeIngredientDTO(
                id: 4205,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.driedCranberries
            ),
            RecipeIngredientDTO(
                id: 4206,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.goatCheese,
                note: "crumbled"
            ),
            RecipeIngredientDTO(
                id: 4207,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 1,
                ingredient: IngredientDTO.pecans,
                note: "chopped"
            ),
            RecipeIngredientDTO(
                id: 4208,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.25,
                ingredient: IngredientDTO.mapleSyrup
            ),
            RecipeIngredientDTO(
                id: 4209,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 1.5,
                ingredient: IngredientDTO.balsamicVinegar
            ),
            RecipeIngredientDTO(
                id: 4210,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.dijonMustard
            )
        ],
        recipeSteps: [
            RecipeStepDTO(id: 41011, stepNumber: 1, text: "Preheat oven to 425 degrees."),
            RecipeStepDTO(id: 41012, stepNumber: 2, text: "Cut the brussel sprouts into halves and add them to a large bowl."),
            RecipeStepDTO(id: 41013, stepNumber: 3, text: "Toss the sprouts with olive oil, salt, and black pepper."),
            RecipeStepDTO(id: 41014, stepNumber: 4, text: "Spread the brussel sprouts on a baking pan, arranging them cut side down. Roast in the oven for 20-25 minutes, or until the edges of the brussel sprouts show hints of brown."),
            RecipeStepDTO(id: 41015, stepNumber: 5, text: "While the brussel sprouts roast, whisk the maple syrup, balsamic vinegar, and dijon mustard together."),
            RecipeStepDTO(id: 41016, stepNumber: 6, text: "Once the brussel sprouts are done, add them to a bowl with dried cranberries and goat cheese. Drizzle the glaze over the top and toss until coated to your liking."),
            RecipeStepDTO(id: 41017, stepNumber: 7, text: "Serve with chopped pecans sprinkled over top.")
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

