//
//  RecipeStepDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct RecipeStepDTO: Identifiable {
    var id: Int
    var stepNumber: Int
    var text: String
    
    static let `garlicButterChickenTendersSteps` = [
        RecipeStepDTO(
            id: 0,
            stepNumber: 0,
            text: "Add olive oil and melt 1 tablespoon of butter in a skillet over medium heat."
        ),
        RecipeStepDTO(
            id: 1,
            stepNumber: 1,
            text: "Add the chicken tenders to the skillet, and season with salt, pepper, and paprika."
        ),
        RecipeStepDTO(
            id: 2,
            stepNumber: 2,
            text: "Cook for 3 minutes on each side. Season each side as you flip and cook."
        ),
        RecipeStepDTO(
            id: 3,
            stepNumber: 3,
            text: "Add garlic to skillet. Cook for 30 seconds or until garlic becomes fragrant."
        ),
        RecipeStepDTO(
            id: 4,
            stepNumber: 4,
            text: "Season with Italian seasoning and cook for one more minute."
        ),
        RecipeStepDTO(
            id: 5,
            stepNumber: 4,
            text: "Remove chicken from skillet. Garnish with parsley if desired."
        )
    ]
}
