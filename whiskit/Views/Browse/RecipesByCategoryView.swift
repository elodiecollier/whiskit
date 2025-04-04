//
//  RecipesByCategoryView.swift
//  whiskit
//
//  Created by Elodie Collier on 12/5/24.
//

import SwiftUI

struct RecipesByCategoryView: View {
    @State private var selectedRecipe: RecipeDTO? = nil
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    let filteredRecipes: [RecipeDTO]
    
    var body: some View {
        ZStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    if (filteredRecipes.isEmpty) {
                        Text("No recipes to show!")
                    }
                    else {
                        ForEach(Array(filteredRecipes.enumerated()), id: \.element.id) { index, recipe in
                            Button(action: {
                                openRecipe(tappedRecipe: recipe)
                            }) {
                                RecipeTileView(
                                    recipe: recipe,
                                    recipeIndex: index
                                )
                            }
                        }
                    }
                }
                .padding()
            }
            .fullScreenCover(item: $selectedRecipe) { recipe in
                RecipeView(
                    recipe: recipe,
                    onClose: { selectedRecipe = nil }
                )
            }
        }
    }
    
    func openRecipe(tappedRecipe: RecipeDTO) {
        selectedRecipe = tappedRecipe
    }
}

#Preview {
    RecipesByCategoryView(
        filteredRecipes: RecipeDTO.offlineRecipes
    )
}
