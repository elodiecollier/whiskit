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
    var tags: [TagDTO]?
    
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
                ingredient: IngredientDTO.unsaltedButter,
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
        category: CategoryDTO.entree,
        tags: [TagDTO.poultry]
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
        category: CategoryDTO.entree,
        tags: [TagDTO.vegetarian]
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
        helpfulBasics: [CookingBasicDTO.makeChaiConcentrateEasy],
        tags: [TagDTO.breakfast]
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
                ingredient: IngredientDTO.unsaltedButter,
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
                ingredient: IngredientDTO.unsaltedButter,
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
        category: CategoryDTO.side,
        tags: [TagDTO.vegetarian, TagDTO.glutenFree]
    )
    
    static let `bananaFoster` = RecipeDTO(
        id: 8,
        name: "Banana Foster",
        image: "bananaFoster",
        ingredients: [
            RecipeIngredientDTO(
                id: 5001,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.unsaltedButter
            ),
            RecipeIngredientDTO(
                id: 5002,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 2,
                ingredient: IngredientDTO.bananas,
                note: "sliced"
            ),
            RecipeIngredientDTO(
                id: 5003,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 1,
                ingredient: IngredientDTO.lightBrownSugar
            ),
            RecipeIngredientDTO(
                id: 5004,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 1,
                ingredient: IngredientDTO.vanillaExtract
            ),
            RecipeIngredientDTO(
                id: 5005,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 0.5,
                ingredient: IngredientDTO.cinnamon
            ),
            RecipeIngredientDTO(
                id: 5006,
                unitOfMeasurement: UnitsOfMeasurementDTO.pinch,
                measurementValue: 1,
                ingredient: IngredientDTO.salt
            )
        ],
        recipeSteps: [
            RecipeStepDTO(id: 5101, stepNumber: 1, text: "Melt butter in a saucepan over medium heat."),
            RecipeStepDTO(id: 5102, stepNumber: 2, text: "Add sliced bananas and stir for 2 minutes."),
            RecipeStepDTO(id: 5103, stepNumber: 3, text: "Add brown sugar, vanilla, cinnamon, and salt."),
            RecipeStepDTO(id: 5104, stepNumber: 4, text: "Lower heat and continue cooking, stirring constantly for 2 more minutes."),
            RecipeStepDTO(id: 5105, stepNumber: 5, text: "Serve over a scoop of ice cream."),
            RecipeStepDTO(id: 5106, stepNumber: 6, text: "Note: 1 oz of booze may be added during the last 2 minutes of cooking (Rum works well). Add with the pan off of the heat - beware of flaming.")
        ],
        category: CategoryDTO.dessert,
        tags: [TagDTO.glutenFree]
    )
    
    static let `lemonButterSalmon` = RecipeDTO(
        id: 9,
        name: "Lemon Butter Salmon",
        image: "lemonButterSalmon",
        ingredients: [
            RecipeIngredientDTO(
                id: 6001,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 5,
                ingredient: IngredientDTO.salmonFillets
            ),
            RecipeIngredientDTO(
                id: 6002,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.oliveOil
            ),
            RecipeIngredientDTO(
                id: 6003,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.dijonMustard
            ),
            RecipeIngredientDTO(
                id: 6004,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.garlicCloves,
                note: "minced"
            ),
            RecipeIngredientDTO(
                id: 6005,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.lemonJuice
            ),
            RecipeIngredientDTO(
                id: 6006,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 0.5,
                ingredient: IngredientDTO.blackPepper
            ),
            RecipeIngredientDTO(
                id: 6007,
                unitOfMeasurement: UnitsOfMeasurementDTO.pinch,
                measurementValue: 1,
                ingredient: IngredientDTO.salt,
                note: "to taste"
            )
        ],
        recipeSteps: [
            RecipeStepDTO(
                id: 6201,
                stepNumber: 1,
                text: "Preheat your oven to 425°F with the rack in the center."
            ),
            RecipeStepDTO(
                id: 6202,
                stepNumber: 2,
                text: "In a medium bowl combine lemon juice, olive oil, garlic and Dijon mustard. Mix well."
            ),
            RecipeStepDTO(
                id: 6203,
                stepNumber: 3,
                text: "Place salmon fillets into the skillet, pour the mixture over salmon fillets and rub. Season with ground black pepper and salt."
            ),
            RecipeStepDTO(
                id: 6204,
                stepNumber: 4,
                text: "Bake for 10-15 minutes in the preheated oven."
            ),
            RecipeStepDTO(
                id: 6305,
                stepNumber: 5,
                text: "Pour the lemon butter garlic sauce over the baked salmon and allow to rest for 5-10 minutes."
            )
        ],
        category: CategoryDTO.entree,
        helpfulRecipes: [RecipeDTO.lemonButterGarlicSauce],
        tags: [TagDTO.seafood]
    )
    
    static let `lemonButterGarlicSauce` = RecipeDTO(
        id: 9,
        name: "Lemon Butter Garlic Sauce",
        ingredients: [
            RecipeIngredientDTO(
                id: 6101,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.25,
                ingredient: IngredientDTO.unsaltedButter,
                note: "unsalted"
            ),
            RecipeIngredientDTO(
                id: 6102,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 1.5,
                ingredient: IngredientDTO.garlicCloves,
                note: "minced"
            ),
            RecipeIngredientDTO(
                id: 6103,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.5,
                ingredient: IngredientDTO.heavyWhippingCream
            ),
            RecipeIngredientDTO(
                id: 6104,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 2,
                ingredient: IngredientDTO.lemonJuice
            ),
            RecipeIngredientDTO(
                id: 6105,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 1,
                ingredient: IngredientDTO.parsley,
                note: "finely chopped"
            ),
            RecipeIngredientDTO(
                id: 6106,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 0.5,
                ingredient: IngredientDTO.blackPepper
            )
        ],
        recipeSteps: [
            RecipeStepDTO(
                id: 6301,
                stepNumber: 1,
                text: "While the salmon is in the oven, melt butter in a medium saucepan over low-medium heat."
            ),
            RecipeStepDTO(
                id: 6302,
                stepNumber: 2,
                text: "Add the minced garlic and saute until fragrant, about 20 seconds."
            ),
            RecipeStepDTO(
                id: 6303,
                stepNumber: 3,
                text: "Pour in heavy cream and bring to a boil. The sauce should thicken a little bit."),
            RecipeStepDTO(
                id: 6304,
                stepNumber: 4,
                text: "Take off the heat and stir in lemon juice if using. Garnish with parsley and season with black pepper and salt to your liking."
            )
        ],
        category: CategoryDTO.entree
    )
    
    static let `chickenGnocchiSoup` = RecipeDTO(
        id: 10,
        name: "Chicken Gnocchi Soup",
        image: "chickenGnocchiSoup",
        ingredients: [
            RecipeIngredientDTO(
                id: 1001,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 3,
                ingredient: IngredientDTO.bonelessChickenBreast,
                note: "cooked and diced"
            ),
            RecipeIngredientDTO(
                id: 1002,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 1,
                ingredient: IngredientDTO.celery,
                note: "chopped"
            ),
            RecipeIngredientDTO(
                id: 1003,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 0.5,
                ingredient: IngredientDTO.whiteOnion,
                note: "diced"
            ),
            RecipeIngredientDTO(
                id: 1004,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 2,
                ingredient: IngredientDTO.garlicCloves,
                note: "minced"
            ),
            RecipeIngredientDTO(
                id: 1005,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 0.5,
                ingredient: IngredientDTO.shreddedCarrots
            ),
            RecipeIngredientDTO(
                id: 1006,
                unitOfMeasurement: UnitsOfMeasurementDTO.tablespoons,
                measurementValue: 1,
                ingredient: IngredientDTO.oliveOil
            ),
            RecipeIngredientDTO(
                id: 1007,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 4,
                ingredient: IngredientDTO.chickenBroth
            ),
            RecipeIngredientDTO(
                id: 1008,
                unitOfMeasurement: UnitsOfMeasurementDTO.teaspoons,
                measurementValue: 1,
                ingredient: IngredientDTO.thyme
            ),
            RecipeIngredientDTO(
                id: 1009,
                unitOfMeasurement: UnitsOfMeasurementDTO.ounces,
                measurementValue: 16,
                ingredient: IngredientDTO.potatoGnocchi
            ),
            RecipeIngredientDTO(
                id: 1010,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 2,
                ingredient: IngredientDTO.halfAndHalf
            ),
            RecipeIngredientDTO(
                id: 1011,
                unitOfMeasurement: UnitsOfMeasurementDTO.cups,
                measurementValue: 1,
                ingredient: IngredientDTO.freshSpinach,
                note: "roughly chopped"
            )
        ],
        recipeSteps: [
            RecipeStepDTO(
                id: 101,
                stepNumber: 1,
                text: "Heat olive oil in a large pot over medium heat. Add celery, onions, garlic, and carrots and saute for 2-3 minutes until onions are translucent."
            ),
            RecipeStepDTO(
                id: 102,
                stepNumber: 2,
                text: "Add chicken, chicken broth, salt, pepper, and thyme, bring to a boil, then gently stir in gnocchi. Boil for 3-4 minutes longer before reducing heat to a simmer and cooking for 10 minutes."
            ),
            RecipeStepDTO(
                id: 103,
                stepNumber: 3,
                text: "Stir in half and half and spinach and cook another 1-2 minutes until spinach is tender. Taste, add salt and pepper if needed, and serve."
            )
        ],
        category: CategoryDTO.entree,
        tags: [TagDTO.poultry]
    )
    
    static let `lemonGarlicDrumsticks` = RecipeDTO(
        id: 11,
        name: "Lemon Garlic Drumsticks",
        image: "chickenLegs",
        ingredients: [
            RecipeIngredientDTO(
                id: 110,
                unitOfMeasurement: UnitsOfMeasurementDTO.quantity,
                measurementValue: 4,
                ingredient: IngredientDTO.chickenDrumsticks
            ),
            RecipeIngredientDTO(
                id: 111,
                unitOfMeasurement: UnitsOfMeasurementDTO.splash,
                measurementValue: 3,
                ingredient: IngredientDTO.oliveOil
            ),
            RecipeIngredientDTO(
                id: 112,
                unitOfMeasurement: UnitsOfMeasurementDTO.sprinkle,
                measurementValue: 1,
                ingredient: IngredientDTO.salt
            ),
            RecipeIngredientDTO(
                id: 113,
                unitOfMeasurement: UnitsOfMeasurementDTO.sprinkle,
                measurementValue: 1,
                ingredient: IngredientDTO.blackPepper
            ),
            RecipeIngredientDTO(
                id: 114,
                unitOfMeasurement: UnitsOfMeasurementDTO.sprinkle,
                measurementValue: 1,
                ingredient: IngredientDTO.thyme
            ),
            RecipeIngredientDTO(
                id: 115,
                unitOfMeasurement: UnitsOfMeasurementDTO.sprinkle,
                measurementValue: 1,
                ingredient: IngredientDTO.garlicPowder
            ),
            RecipeIngredientDTO(
                id: 116,
                unitOfMeasurement: UnitsOfMeasurementDTO.splash,
                measurementValue: 1,
                ingredient: IngredientDTO.chickenBroth
            )
        ],
        recipeSteps: [
            RecipeStepDTO(
                id: 201,
                stepNumber: 1,
                text: "Finely slice the lemon and white onion. Set aside."
            ),
            RecipeStepDTO(
                id: 202,
                stepNumber: 2,
                text: "In a large resealable bag, combine chicken drumsticks, olive oil, salt, pepper, dried thyme, and garlic powder. Seal the bag and shake to evenly coat the chicken. Let it marinate for at least 30 minutes or up to overnight for deeper flavor."
            ),
            RecipeStepDTO(
                id: 203,
                stepNumber: 3,
                text: "Preheat the oven to 450°F (230°C)."
            ),
            RecipeStepDTO(
                id: 204,
                stepNumber: 4,
                text: "Arrange the sliced onion and lemon in a single layer at the bottom of a baking dish."
            ),
            RecipeStepDTO(
                id: 205,
                stepNumber: 5,
                text: "Place the marinated chicken drumsticks on top of the onion and lemon slices. Pour any remaining marinade over the chicken."
            ),
            RecipeStepDTO(
                id: 206,
                stepNumber: 6,
                text: "Lightly sprinkle additional salt and pepper over the chicken for extra seasoning."
            ),
            RecipeStepDTO(
                id: 207,
                stepNumber: 7,
                text: "Bake in the preheated oven for 30-35 minutes. Halfway through cooking, add the chicken broth to the pan to keep the chicken moist."
            ),
            RecipeStepDTO(
                id: 208,
                stepNumber: 8,
                text: "Continue baking for another 15 minutes or until the chicken reaches an internal temperature of 165°F (74°C) and the skin is golden and crispy."
            ),
            RecipeStepDTO(
                id: 209,
                stepNumber: 9,
                text: "Remove from the oven and let rest for a few minutes before serving. Enjoy!"
            )
        ],
        category: CategoryDTO.entree,
        tags: [TagDTO.poultry]
    )
    
    static let `offlineRecipes` = [
        RecipeDTO.garlicButterChickenTenders,
        RecipeDTO.pastaSalad,
        RecipeDTO.icedVanillaChai,
        RecipeDTO.frenchApplePie,
        RecipeDTO.mapleBalsamicRoastedBrusselSprouts,
        RecipeDTO.bananaFoster,
        RecipeDTO.lemonButterSalmon,
        RecipeDTO.chickenGnocchiSoup,
        RecipeDTO.lemonGarlicDrumsticks
    ]
}

