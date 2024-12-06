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
                ScrollView {
                    VStack {
                        ForEach(CategoryDTO.categories) { category in
                            NavigationLink(
                                destination: RecipesByCategoryView(filteredRecipes: filterRecipesByCategory(selectedCategory: category))
                            ) {
                                Image(category.buttonImage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.horizontal)
                            }
                        }
                    }
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
