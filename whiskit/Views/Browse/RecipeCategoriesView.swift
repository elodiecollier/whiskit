//
//  BrowseView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct RecipeCategoriesView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Browse Recipes")
                    .padding()
                ScrollView {
                    VStack {
                        ForEach(CategoryDTO.categories) { category in
                            NavigationLink(
                                destination: RecipesByCategoryView()
                            ) {
                                Text(category.categoryName)
                                    .foregroundStyle(Color("TextColor"))
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 100)
                                    .padding()
                            }
                            .background {
                                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                                    .fill(Color.cyan)
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RecipeCategoriesView()
}
