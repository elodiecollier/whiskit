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
            RecipeStepDTO(id: 91, stepNumber: 1, text: "Bring 2-3 inches of water to a boil in a saucepan or deep skillet."),
            RecipeStepDTO(id: 92, stepNumber: 2, text: "Crack the egg into a small bowl."),
            RecipeStepDTO(id: 93, stepNumber: 3, text: "Stir the water to create a whirlpool or vortex."),
            RecipeStepDTO(id: 94, stepNumber: 4, text: "Stir the water to create a whirlpool or vortex."),
            RecipeStepDTO(id: 95, stepNumber: 5, text: "Gently slide the egg into the center of the whirlpool."),
            RecipeStepDTO(id: 96, stepNumber: 6, text: "Cook for 3-5 minutes."),
            RecipeStepDTO(id: 97, stepNumber: 7, text: "Use a slotted spoon to remove the egg from the water."),
            RecipeStepDTO(id: 98, stepNumber: 8, text: "Season and serve immediately!"),
        ]
    )
    
    static let `makeChaiConcentrateEasy` = CookingBasicDTO(
        id: 2,
        title: "Make Chai Concentrate - Easy",
        recipeSteps: [
            RecipeStepDTO(id: 101, stepNumber: 1, text: "Place two cups of water on high heat until boiling."),
            RecipeStepDTO(id: 102, stepNumber: 2, text: "Turn stove heat down to medium low."),
            RecipeStepDTO(id: 103, stepNumber: 3, text: "Add 6 chai bags of your choice to water."),
            RecipeStepDTO(id: 104, stepNumber: 4, text: "Let tea steep for 6-8 minutes, then remove bags."),
            RecipeStepDTO(id: 105, stepNumber: 5, text: "Sweeten to your preference."),
            RecipeStepDTO(id: 106, stepNumber: 6, text: "Turn heat back to high and let tea reduce/concentrate for 10 minutes."),
            RecipeStepDTO(id: 107, stepNumber: 7, text: "Remove from heat and let cool. Store in fridge for up to a week."),
        ]
    )
    
    static let `offlineCookingBasics` = [CookingBasicDTO.poachAnEgg, CookingBasicDTO.makeChaiConcentrateEasy]
}
