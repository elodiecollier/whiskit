//
//  BrowseView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct RecipeCategoriesView: View {
    @State private var filteredRecipes = RecipeDTO.offlineRecipes
    @State private var selectedCategory: CategoryDTO? = nil
    
    var body: some View {
        ZStack {
            Color("backgroundPrimary").edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Image("title1")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Button(action: {
                                filteredRecipes = RecipeDTO.offlineRecipes
                                selectedCategory = nil
                            }) {
                                Text("All")
                                    .foregroundStyle(.black)
                                    .fontWeight(selectedCategory == nil ? .bold : .regular)
                            }
                            .padding(10)
                            .cornerRadius(10)
                            ForEach(CategoryDTO.categories) { category in
                                Button(action: {
                                    filteredRecipes = filterRecipesByCategory(selectedCategory: category)
                                    selectedCategory = category
                                }) {
                                    Text(category.categoryName)
                                        .foregroundStyle(.black)
                                        .fontWeight(selectedCategory == category ? .bold : .regular)
                                }
                                .padding(10)
                            }
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    RecipesByCategoryView(filteredRecipes: filteredRecipes)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    func filterRecipesByCategory(selectedCategory: CategoryDTO) -> [RecipeDTO] {
        return RecipeDTO.offlineRecipes.filter { $0.category.id == selectedCategory.id }
    }
}

#Preview {
    RecipeCategoriesView()
}
