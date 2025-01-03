//
//  RecipeHeadingView.swift
//  whiskit
//
//  Created by Elodie Collier on 1/2/25.
//

import SwiftUI

struct RecipeHeadingView: View {
    let recipeName: String
    let recipeImage: String
    let submittedByName: String
    
    var body: some View {
        ZStack {
            VStack {
                Text(recipeName)
                    .font(.title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 60)
                    .padding(.bottom, 10)
                if !submittedByName.isEmpty {
                    Text("By \(submittedByName)")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding(.bottom)
                }
            }
            .frame(width: 350)
            .background(Color.blue)
            .cornerRadius(20)
            .padding(.top, 50)
            Image(recipeImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 100)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .position(x: 200, y: 50)
        }
        .frame(width: 400)
    }
}

#Preview {
    RecipeHeadingView(
        recipeName: "Recipe Name",
        recipeImage: "pastaSalad",
        submittedByName: "Elodie Collier"
    )
}
