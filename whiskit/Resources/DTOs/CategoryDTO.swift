//
//  CategoryDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 12/5/24.
//

import Foundation

struct CategoryDTO: Identifiable, Equatable {
    var id: Int
    var categoryName: String
    var buttonImage: String
    
    static let `entree` = CategoryDTO(
        id: 1,
        categoryName: "Entrees",
        buttonImage: "entrees"
    )
    
    static let `side` = CategoryDTO(
        id: 2,
        categoryName: "Sides",
        buttonImage: "sides"
    )
    
    static let `appetizer` = CategoryDTO(
        id: 3,
        categoryName: "Appetizers",
        buttonImage: "appetizers"
    )
    
    static let `dessert` = CategoryDTO(
        id: 4,
        categoryName: "Desserts",
        buttonImage: "desserts"
    )
    
    static let `snack` = CategoryDTO(
        id: 5,
        categoryName: "Snacks",
        buttonImage: "snacks"
    )
    
    static let `beverage` = CategoryDTO(
        id: 6,
        categoryName: "Beverages",
        buttonImage: "beverages"
    )
    
    static let `categories` = [
        CategoryDTO.appetizer,
        CategoryDTO.entree,
        CategoryDTO.side,
        CategoryDTO.dessert,
        CategoryDTO.snack,
        CategoryDTO.beverage
    ]
}
