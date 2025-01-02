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
}

struct IngredientDTO: Identifiable {
    var id: Int
    var ingredientName: String
   
    static let allPurposeFlour = IngredientDTO(id: 1, ingredientName: "all purpose flour")
    static let balsamicVinegar = IngredientDTO(id: 2, ingredientName: "balsamic vinegar")
    static let bananas = IngredientDTO(id: 3, ingredientName: "bananas")
    static let blackPepper = IngredientDTO(id: 4, ingredientName: "black pepper")
    static let brusselSprouts = IngredientDTO(id: 5, ingredientName: "brussel sprouts")
    static let unsaltedButter = IngredientDTO(id: 6, ingredientName: "unsalted butter")
    static let chaiConcentrate = IngredientDTO(id: 7, ingredientName: "chai concentrate")
    static let chickenBreastTenders = IngredientDTO(id: 8, ingredientName: "chicken breast tenders")
    static let cinnamon = IngredientDTO(id: 9, ingredientName: "cinnamon")
    static let dijonMustard = IngredientDTO(id: 10, ingredientName: "dijon mustard")
    static let driedCranberries = IngredientDTO(id: 11, ingredientName: "dried cranberries")
    static let egg = IngredientDTO(id: 12, ingredientName: "egg")
    static let fetaCheese = IngredientDTO(id: 13, ingredientName: "feta cheese")
    static let freshBasil = IngredientDTO(id: 14, ingredientName: "fresh basil")
    static let garlicCloves = IngredientDTO(id: 15, ingredientName: "garlic cloves")
    static let goatCheese = IngredientDTO(id: 16, ingredientName: "goat cheese")
    static let grannySmithApples = IngredientDTO(id: 17, ingredientName: "granny smith apples")
    static let heavyWhippingCream = IngredientDTO(id: 18, ingredientName: "heavy whipping cream")
    static let italianSeasoning = IngredientDTO(id: 19, ingredientName: "italian seasoning")
    static let lemonJuice = IngredientDTO(id: 20, ingredientName: "lemon juice")
    static let lightBrownSugar = IngredientDTO(id: 21, ingredientName: "light brown sugar")
    static let mapleSyrup = IngredientDTO(id: 22, ingredientName: "maple syrup")
    static let milk = IngredientDTO(id: 23, ingredientName: "milk")
    static let oliveOil = IngredientDTO(id: 24, ingredientName: "olive oil")
    static let paprika = IngredientDTO(id: 25, ingredientName: "paprika")
    static let parsley = IngredientDTO(id: 26, ingredientName: "parsley")
    static let pecans = IngredientDTO(id: 27, ingredientName: "pecans")
    static let penne = IngredientDTO(id: 28, ingredientName: "penne")
    static let salt = IngredientDTO(id: 29, ingredientName: "salt")
    static let salmonFillets = IngredientDTO(id: 30, ingredientName: "salmon fillets")
    static let sugar = IngredientDTO(id: 31, ingredientName: "sugar")
    static let tomatoesOnTheVine = IngredientDTO(id: 32, ingredientName: "tomatoes on the vine")
    static let vanillaCoffeeSyrup = IngredientDTO(id: 33, ingredientName: "vanilla coffee syrup")
    static let vanillaExtract = IngredientDTO(id: 34, ingredientName: "vanilla extract")
}
