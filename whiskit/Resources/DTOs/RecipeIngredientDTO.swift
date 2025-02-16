//
//  IngredientDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct RecipeIngredientDTO: Identifiable {
    var id: Int
    var unitOfMeasurement: UnitsOfMeasurementDTO
    var measurementValue: Decimal
    var ingredient: IngredientDTO
    var note: String?
}

struct UnitsOfMeasurementDTO: Identifiable {
    var id: Int
    var measurementType: String
    
    static let `cups` = UnitsOfMeasurementDTO(
        id: 1,
        measurementType: "cups"
    )
    
    static let `tablespoons` = UnitsOfMeasurementDTO(
        id: 2,
        measurementType: "tablespoons"
    )
    
    static let `teaspoons` = UnitsOfMeasurementDTO(
        id: 3,
        measurementType: "teaspoons"
    )
    
    static let `pinch` = UnitsOfMeasurementDTO(
        id: 4,
        measurementType: "pinch"
    )
    
    static let `quantity` = UnitsOfMeasurementDTO(
        id: 4,
        measurementType: "quantity"
    )
    
    static let `pounds` = UnitsOfMeasurementDTO(
        id: 5,
        measurementType: "pounds"
    )
    
    static let `ounces` = UnitsOfMeasurementDTO(
        id: 6,
        measurementType: "ounces"
    )
    
    static let `sprinkle` = UnitsOfMeasurementDTO(
        id: 7,
        measurementType: "sprinkle"
    )
    
    static let `splash` = UnitsOfMeasurementDTO(
        id: 8,
        measurementType: "splash"
    )
}

struct IngredientDTO: Identifiable {
    var id: Int
    var ingredientName: String
   
    static let allPurposeFlour = IngredientDTO(id: 1, ingredientName: "all purpose flour")
    static let balsamicVinegar = IngredientDTO(id: 2, ingredientName: "balsamic vinegar")
    static let bananas = IngredientDTO(id: 3, ingredientName: "bananas")
    static let blackPepper = IngredientDTO(id: 4, ingredientName: "black pepper")
    static let bonelessChickenBreast = IngredientDTO(id: 5, ingredientName: "boneless chicken breast")
    static let brusselSprouts = IngredientDTO(id: 6, ingredientName: "brussel sprouts")
    static let celery = IngredientDTO(id: 7, ingredientName: "celery")
    static let chaiConcentrate = IngredientDTO(id: 8, ingredientName: "chai concentrate")
    static let chickenBroth = IngredientDTO(id: 9, ingredientName: "chicken broth")
    static let chickenBreastTenders = IngredientDTO(id: 10, ingredientName: "chicken breast tenders")
    static let chickenDrumsticks = IngredientDTO(id: 11, ingredientName: "chicken drumsticks")
    static let cinnamon = IngredientDTO(id: 12, ingredientName: "cinnamon")
    static let dijonMustard = IngredientDTO(id: 13, ingredientName: "dijon mustard")
    static let driedCranberries = IngredientDTO(id: 14, ingredientName: "dried cranberries")
    static let egg = IngredientDTO(id: 15, ingredientName: "egg")
    static let fetaCheese = IngredientDTO(id: 16, ingredientName: "feta cheese")
    static let freshBasil = IngredientDTO(id: 17, ingredientName: "fresh basil")
    static let freshSpinach = IngredientDTO(id: 18, ingredientName: "fresh spinach")
    static let garlicCloves = IngredientDTO(id: 19, ingredientName: "garlic cloves")
    static let garlicPowder = IngredientDTO(id: 20, ingredientName: "garlic powder")
    static let gnocchi = IngredientDTO(id: 21, ingredientName: "gnocchi")
    static let goatCheese = IngredientDTO(id: 22, ingredientName: "goat cheese")
    static let grannySmithApples = IngredientDTO(id: 23, ingredientName: "granny smith apples")
    static let halfAndHalf = IngredientDTO(id: 24, ingredientName: "half and half")
    static let heavyWhippingCream = IngredientDTO(id: 25, ingredientName: "heavy whipping cream")
    static let italianSeasoning = IngredientDTO(id: 26, ingredientName: "italian seasoning")
    static let lemonJuice = IngredientDTO(id: 27, ingredientName: "lemon juice")
    static let lightBrownSugar = IngredientDTO(id: 28, ingredientName: "light brown sugar")
    static let mapleSyrup = IngredientDTO(id: 29, ingredientName: "maple syrup")
    static let milk = IngredientDTO(id: 30, ingredientName: "milk")
    static let mincedGarlic = IngredientDTO(id: 31, ingredientName: "minced garlic")
    static let oliveOil = IngredientDTO(id: 32, ingredientName: "olive oil")
    static let onions = IngredientDTO(id: 33, ingredientName: "onions")
    static let paprika = IngredientDTO(id: 34, ingredientName: "paprika")
    static let parsley = IngredientDTO(id: 35, ingredientName: "parsley")
    static let pecans = IngredientDTO(id: 36, ingredientName: "pecans")
    static let penne = IngredientDTO(id: 37, ingredientName: "penne")
    static let potatoGnocchi = IngredientDTO(id: 38, ingredientName: "potato gnocchi")
    static let salt = IngredientDTO(id: 39, ingredientName: "salt")
    static let salmonFillets = IngredientDTO(id: 40, ingredientName: "salmon fillets")
    static let shreddedCarrots = IngredientDTO(id: 41, ingredientName: "shredded carrots")
    static let sugar = IngredientDTO(id: 42, ingredientName: "sugar")
    static let thyme = IngredientDTO(id: 43, ingredientName: "thyme")
    static let tomatoesOnTheVine = IngredientDTO(id: 44, ingredientName: "tomatoes on the vine")
    static let unsaltedButter = IngredientDTO(id: 45, ingredientName: "unsalted butter")
    static let vanillaCoffeeSyrup = IngredientDTO(id: 46, ingredientName: "vanilla coffee syrup")
    static let vanillaExtract = IngredientDTO(id: 47, ingredientName: "vanilla extract")
    static let whiteOnion = IngredientDTO(id: 48, ingredientName: "white onion")
}
