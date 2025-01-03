//
//  BrowseView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct RecipeCategoriesView: View {
    @State private var filteredRecipes = RecipeDTO.offlineRecipes
    
    var body: some View {
        ZStack {
            Color("backgroundPrimary").edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    HStack {
                        Text("Bon Appetit")
                            .font(.custom("OldStandardTT-Bold", size: 40))
                            .padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Text("what are you hungry for?")
                            .font(.custom("OldStandardTT-Regular", size: 20))
                            .padding(.horizontal)
                        Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Button(action: {
                                filteredRecipes = RecipeDTO.offlineRecipes
                            }) {
                                Text("All")
                            }
                            ForEach(CategoryDTO.categories) { category in
                                Button(action: {
                                    filteredRecipes = filterRecipesByCategory(selectedCategory: category)
                                }) {
                                    Text(category.categoryName)
                                }
                            }
                        }
                        .padding()
                    }
                    RecipesByCategoryView(filteredRecipes: filteredRecipes)
                }
            }
        }
    }
    
    func filterRecipesByCategory(selectedCategory: CategoryDTO) -> [RecipeDTO] {
        return RecipeDTO.offlineRecipes.filter { $0.category.id == selectedCategory.id }
    }
}

#Preview {
    RecipeCategoriesView()
}
