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
    
    var body: some View {
        ZStack {
            VStack {
                Text(recipe.name)
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
