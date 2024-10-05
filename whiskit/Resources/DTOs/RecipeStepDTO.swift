//
//  RecipeStepDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct RecipeStepDTO {
    var stepNumber: Int
    var text: String
    
    static let `garlicButterChickenTendersSteps` = [
        RecipeStepDTO(
            stepNumber: 0,
            text: "Add olive oil and melt 1 tablespoon of butter in a skillet over medium heat."
        ),
        RecipeStepDTO(
            stepNumber: 1,
            text: "Add the chicken tenders to the skillet, and season with salt, pepper, and paprika."
        ),
        RecipeStepDTO(
            stepNumber: 2,
            text: "Cook for 3 minutes on each side. Season each side as you flip and cook."
        ),
        RecipeStepDTO(
            stepNumber: 3,
            text: "Add garlic to skillet. Cook for 30 seconds or until garlic becomes fragrant."
        ),
        RecipeStepDTO(
            stepNumber: 4,
            text: "Season with Italian seasoning and cook for one more minute."
        ),
        RecipeStepDTO(
            stepNumber: 4,
            text: "Remove chicken from skillet. Garnish with parsley if desired."
        )
    ]
}
