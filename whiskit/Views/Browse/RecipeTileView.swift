//
//  RecipeTileView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct RecipeTileView: View {
    let recipe: RecipeDTO
    
    var body: some View {
        VStack {
            if (doesContentExist(field: recipe.image)) {
                Image(recipe.image!)
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: 140, maxHeight: 80)
                        .cornerRadius(20)
                        .clipped()

            }
            else {
                Image("defaultFood")
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: 140, maxHeight: 80)
                        .cornerRadius(20)
                        .clipped()
            }
            Spacer()
            Text(recipe.name)
                .lineLimit(2)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 170, height: 170)
        )
        .frame(width: 170, height: 170)
    }
    
    func doesContentExist(field: String?) -> Bool {
        return (field != nil && field != "")
    }
}

#Preview {
    RecipeTileView(
        recipe: RecipeDTO.default
    )
}
