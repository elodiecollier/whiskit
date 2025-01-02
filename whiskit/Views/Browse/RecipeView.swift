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
            Color("backgroundPrimary").edgesIgnoringSafeArea(.all)
            VStack {
                Text(recipe.name)
                    .frame(maxWidth: 300)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .font(.title)
                ScrollView {
                    VStack {
                        Image(recipeService.recipeImage(recipeImage: recipe.image))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                            .clipped()
                        if let submittedBy = recipe.submittedBy {
                            Text("Submitted by \(submittedBy)")
                                .font(.caption)
                        }
                    }
                    .padding(.top)
                    .padding()
                    VStack {
                        if (recipe.helpfulRecipes != nil) {
                            ForEach (recipe.helpfulRecipes!) { helpfulRecipe in
                                Text("\(helpfulRecipe.name) Ingredients")
                                    .font(.title2)
                                    .multilineTextAlignment(.center)
                                ForEach(helpfulRecipe.ingredients) { ingredient in
                                    Text(formattedIngredientText(ingredient: ingredient))
                                        .multilineTextAlignment(.center)
                                }
                            }
                        }
                        Text("\(recipe.name) Ingredients")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                        ForEach(recipe.ingredients) { ingredient in
                            Text(formattedIngredientText(ingredient: ingredient))
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding()
                    .background(Color(.green).opacity(0.3))
                    .cornerRadius(20)
                    VStack {
                        if (recipe.helpfulRecipes != nil) {
                            ForEach(recipe.helpfulRecipes!) { helpfulRecipe in
                                Text("\(helpfulRecipe.name) Steps")
                                    .font(.title2)
                                ForEach(helpfulRecipe.recipeSteps) { step in
                                    Text("\(step.stepNumber). \(step.text)")
                                        .padding()
                                }
                            }
                            .padding(.bottom)
                        }
                        Text("\(recipe.name) Steps")
                            .font(.title2)
                        ForEach(recipe.recipeSteps) { step in
                            Text("\(step.stepNumber). \(step.text)")
                                .padding()
                        }
                    }
                    .padding()
                    .background(Color(.yellow).opacity(0.3))
                    .cornerRadius(20)
                    .padding()
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
