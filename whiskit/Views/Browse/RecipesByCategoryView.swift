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
    
    var body: some View {
            Text("Browse Recipes")
                .padding()
            ScrollView {
                VStack {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(RecipeDTO.offlineRecipes) { recipe in
                        Button(action: {
                            openRecipe(tappedRecipe: recipe)
                        }) {
                            RecipeTileView(recipe: recipe)
                        }
                    }
                }
            }
        }
        .fullScreenCover(item: $selectedRecipe) { recipe in
            RecipeView(
                recipe: recipe,
                onClose: { selectedRecipe = nil }
            )
        }
    }
    
    func openRecipe(tappedRecipe: RecipeDTO) {
        selectedRecipe = tappedRecipe
    }
}

#Preview {
    RecipesByCategoryView()
}
