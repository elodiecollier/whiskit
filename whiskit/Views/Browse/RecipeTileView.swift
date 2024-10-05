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
                    .scaledToFill()
                    .cornerRadius(20)
                    .frame(maxWidth: 90, maxHeight: 90)
                    .padding()
            }
            Text(recipe.name)
                .padding()
        }
        .background(
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 150, height: 150)
        )
        .frame(width: 150, height: 150)
    }
    
    func doesContentExist(field: String?) -> Bool {
        return (field != nil && field != "")
    }
}

#Preview {
    RecipeTileView(
        recipe: RecipeDTO.garlicButterChickenTenders
    )
}
