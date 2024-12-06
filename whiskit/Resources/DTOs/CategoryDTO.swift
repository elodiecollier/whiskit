//
//  CategoryDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 12/5/24.
//

import Foundation

struct CategoryDTO: Identifiable {
    var id: Int
    var categoryName: String
    
    static let `entree` = CategoryDTO(
        id: 1,
        categoryName: "Entree"
    )
    
    static let `side` = CategoryDTO(
        id: 2,
        categoryName: "Side"
    )
    static let `appetizer` = CategoryDTO(
        id: 3,
        categoryName: "Appetizer"
    )
    static let `dessert` = CategoryDTO(
        id: 4,
        categoryName: "Dessert"
    )
    static let `snack` = CategoryDTO(
        id: 5,
        categoryName: "Snack"
    )
    static let `beverage` = CategoryDTO(
        id: 6,
        categoryName: "Beverage"
    )
    
    static let `categories` = [
        CategoryDTO.appetizer,
        CategoryDTO.entree,
        CategoryDTO.dessert,
        CategoryDTO.snack,
        CategoryDTO.beverage
    ]
}
