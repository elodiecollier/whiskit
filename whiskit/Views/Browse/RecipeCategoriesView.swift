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
            Color.white.edgesIgnoringSafeArea(.all)
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
                                selectedCategory = nil
                            }) {
                                VStack {
                                    Image(systemName: "birthday.cake.fill")
                                        .padding()
                                        .background(
                                            Circle()
                                                .foregroundStyle(selectedCategory == nil ? Color.orange.opacity(0.8) : Color.clear)
                                                .opacity(0.2)
                                        )
                                        .foregroundStyle(.black)
                                    Text("All")
                                }
                            }
                            .padding()
                            .cornerRadius(10)
                            
                            ForEach(CategoryDTO.categories) { category in
                                Button(action: {
                                    filteredRecipes = filterRecipesByCategory(selectedCategory: category)
                                    selectedCategory = category
                                }) {
                                    VStack {
                                        Image(systemName: "birthday.cake.fill")
                                            .padding()
                                            .background(
                                                Circle()
                                                    .foregroundStyle(selectedCategory == category ? Color.orange.opacity(0.8) : Color.clear)
                                                    .opacity(0.2)
                                            )
                                            .foregroundStyle(.black)
                                        Text(category.categoryName)
                                            .foregroundStyle(.black)
                                    }
                                }
                                .padding()
                                .cornerRadius(10)
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                                .fill(Color.gray.opacity(0.2))
                        )
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
