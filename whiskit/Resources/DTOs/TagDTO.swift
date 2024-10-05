//
//  TagDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/5/24.
//

import Foundation

struct TagDTO: Identifiable {
    var id: Int
    var name: String
    
    static let `entree` = TagDTO(
        id: 0,
        name: "Entree"
        )
    
    static let `appetizer` = TagDTO(
        id: 1,
        name: "Appetizer"
        )
    
    static let `dessert` = TagDTO(
        id: 2,
        name: "Dessert"
        )
    
    static let `snack` = TagDTO(
        id: 3,
        name: "Snack"
        )
    
    static let `vegetarian` = TagDTO(
        id: 4,
        name: "Snack"
        )
    
    static let `poultry` = TagDTO(
        id: 5,
        name: "Poultry"
    )
    
    static let `glutenFree` = TagDTO(
        id: 6,
        name: "Gluten-Free"
        )
}
