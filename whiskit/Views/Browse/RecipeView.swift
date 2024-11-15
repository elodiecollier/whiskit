//
//  RecipeView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/5/24.
//

import SwiftUI

struct RecipeView: View {
    @Binding var isRecipeOpen: Bool
    let recipe: RecipeDTO
    let recipeService = RecipeService()
    
    var body: some View {
        ZStack {
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
                        if (recipe.submittedBy != nil) {
                            Text("Submitted by \(recipe.submittedBy!)")
                                .font(.caption)
                        }
                    }
                    .padding(.top)
                    .padding()
                    VStack {
                        Text("Ingredients")
                            .font(.title2)
                        ForEach(recipe.ingredients) { ingredient in
                            Text(ingredient.text)
                        }
                    }
                    .padding()
                    .background(Color(.green).opacity(0.3))
                    .cornerRadius(20)
                    VStack {
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
                        isRecipeOpen = false
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
}

#Preview {
    RecipeView(
        isRecipeOpen: .constant(true),
        recipe: RecipeDTO.garlicButterChickenTenders
    )
}
