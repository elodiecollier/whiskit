//
//  RecipeView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/5/24.
//

import SwiftUI

struct RecipeView: View {
    let recipe: RecipeDTO
    let recipeService = RecipeService()
    var onClose: () -> Void
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                    Image(recipeService.recipeImage(recipeImage: recipe.image))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 29)
                                .fill(Color("WhiskitOrange")).opacity(0.7)
                        }
                        .padding()
                    HStack {
                        Text(recipe.name)
                            .padding()
                        Spacer()
                    }
                }
            }
            VStack {
                ScrollView {
//                    VStack {
//                        VStack {
//                            if (recipe.helpfulRecipes != nil) {
//                                ForEach (recipe.helpfulRecipes!) { helpfulRecipe in
//                                    Text("\(helpfulRecipe.name) Ingredients")
//                                        .font(.title2)
//                                    ForEach(helpfulRecipe.ingredients) { ingredient in
//                                        Text(formattedIngredientText(ingredient: ingredient))
//                                    }
//                                }
//                            }
//                            Text("\(recipe.name) Ingredients")
//                                .font(.title2)
//                            ForEach(recipe.ingredients) { ingredient in
//                                Text(formattedIngredientText(ingredient: ingredient))
//                            }
//                        }
//                        .padding()
//                        .background(Color(.green).opacity(0.3))
//                        .cornerRadius(20)
//                    }
//                    VStack {
//                        if (recipe.helpfulRecipes != nil) {
//                            ForEach(recipe.helpfulRecipes!) { helpfulRecipe in
//                                Text("\(helpfulRecipe.name) Steps")
//                                    .font(.title2)
//                                ForEach(helpfulRecipe.recipeSteps) { step in
//                                    Text("\(step.stepNumber). \(step.text)")
//                                        .padding()
//                                }
//                            }
//                            .padding(.bottom)
//                        }
//                        Text("\(recipe.name) Steps")
//                            .font(.title2)
//                        ForEach(recipe.recipeSteps) { step in
//                            Text("\(step.stepNumber). \(step.text)")
//                                .padding()
//                        }
//                    }
//                    .padding()
//                    .background(Color(.yellow).opacity(0.3))
//                    .cornerRadius(20)
//                    .padding()
                }
            }
            VStack {
                HStack {
                    Button(action: {
                        onClose()
                    }) {
                        Image(systemName: "xmark.circle")
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    private func formattedIngredientText(ingredient: RecipeIngredientDTO) -> String {
        if ingredient.unitOfMeasurement.measurementType == "sprinkle" || ingredient.unitOfMeasurement.measurementType == "pinch" {
            return "A \(ingredient.unitOfMeasurement.measurementType) of \(ingredient.ingredient.ingredientName)"
        }
        
        let measurementValue = recipeService.convertDecimalToFraction(valueToConvert: ingredient.measurementValue)
        let unitOfMeasurement = ingredient.unitOfMeasurement.measurementType != "quantity" ? " \(ingredient.unitOfMeasurement.measurementType)" : ""
        let note = ingredient.note != nil ? ", \(ingredient.note!)" : ""
        return "\(measurementValue)\(unitOfMeasurement) \(ingredient.ingredient.ingredientName)\(note)"
    }
}

#Preview {
    RecipeView(
        recipe: RecipeDTO.garlicButterChickenTenders,
        onClose: {}
    )
}
