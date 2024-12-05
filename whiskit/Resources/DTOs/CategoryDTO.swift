//
//  CategoryDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 12/5/24.
//

import Foundation

struct CategoryDTO: Identifiable {
    var id: Int
    var category: String
    
    static let `entree` = CategoryDTO(
        id: 1,
        category: "Entree"
    )
    
    static let `side` = CategoryDTO(
        id: 2,
        category: "Side"
    )
    static let `appetizer` = CategoryDTO(
        id: 3,
        category: "Appetizer"
    )
    static let `dessert` = CategoryDTO(
        id: 4,
        category: "Dessert"
    )
    static let `snack` = CategoryDTO(
        id: 5,
        category: "Snack"
    )
    static let `beverage` = CategoryDTO(
        id: 6,
        category: "Beverage"
    )
}
