//
//  RecipeTileView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct RecipeTileView: View {
    let recipeName: String
    let recipeImage: String
    
    var body: some View {
        VStack {
            Image(recipeImage)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 100, maxHeight: 100)
            Text(recipeName)
                .padding()
        }
        .background(
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 300, height: 300)
        )
        .frame(width: 300, height: 300)
    }
}

#Preview {
    RecipeTileView(
        recipeName: "Food",
        recipeImage: "logo"
    )
}
