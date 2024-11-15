//
//  CookingBasicDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 11/14/24.
//

import Foundation

struct CookingBasicDTO: Identifiable {
    var id: Int
    var title: String
    var recipeSteps: [RecipeStepDTO]
    
    static let `poachAnEgg` = CookingBasicDTO(
        id: 1,
        title: "Poach an Egg",
        recipeSteps: [
            RecipeStepDTO( id: 91, stepNumber: 1, text: "Bring 2-3 inches of water to a boil in a saucepan or deep skillet."),
            RecipeStepDTO( id: 92, stepNumber: 2, text: "Crack the egg into a small bowl."),
            RecipeStepDTO( id: 93, stepNumber: 3, text: "Stir the water to create a whirlpool or vortex."),
            RecipeStepDTO( id: 94, stepNumber: 4, text: "Stir the water to create a whirlpool or vortex."),
            RecipeStepDTO( id: 95, stepNumber: 5, text: "Gently slide the egg into the center of the whirlpool."),
            RecipeStepDTO( id: 96, stepNumber: 6, text: "Cook for 3-5 minutes."),
            RecipeStepDTO( id: 97, stepNumber: 7, text: "Use a slotted spoon to remove the egg from the water."),
            RecipeStepDTO( id: 98, stepNumber: 8, text: "Season and serve immediately!"),
        ]
    )
    
    static let `offlineCookingBasics` = [CookingBasicDTO.poachAnEgg]
}
