//
//  RecipeTileView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct RecipeTileView: View {
    let recipe: RecipeDTO
    let recipeService = RecipeService()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 170, height: 220)
            VStack(spacing: 8) {
                Spacer()
                Text(recipe.name)
                    .font(.headline)
                    .foregroundColor(.black)
                    .lineLimit(3)
                    .padding(.horizontal, 8)
                    .frame(maxWidth: .infinity, alignment: .bottom)
                    .padding(.bottom)
            }
            .frame(width: 170, height: 220)
        }
        .overlay(
            VStack {
                Image(recipeService.recipeImage(recipeImage: recipe.image))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 170)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .offset(y: -85)
            }
        )
        .padding(.top, 85)
    }
}

#Preview {
    RecipeTileView(
        recipe: RecipeDTO.default
    )
}
