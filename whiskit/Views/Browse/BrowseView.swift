//
//  BrowseView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct BrowseView: View {
    @State private var isRecipeOpen = false
    @State private var selectedRecipe = RecipeDTO.garlicButterChickenTenders
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(RecipeDTO.offlineRecipes) { recipe in
                        Button(action: {
                            selectedRecipe = recipe
                            isRecipeOpen = true
                        }) {
                            RecipeTileView(
                                recipe: recipe
                            )
                        }
                        .padding()
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $isRecipeOpen, content: {
            RecipeView(
                isRecipeOpen: $isRecipeOpen,
                recipe: selectedRecipe
            )
        })
    }
}

#Preview {
    BrowseView()
}
