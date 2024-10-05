//
//  TagDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/5/24.
//

import Foundation

struct TagDTO {
    var name: String
    
    static let `entree` = TagDTO(
        name: "Entree"
        )
    
    static let `appetizer` = TagDTO(
        name: "Appetizer"
        )
    
    static let `dessert` = TagDTO(
        name: "Dessert"
        )
    
    static let `snack` = TagDTO(
        name: "Snack"
        )
    
    static let `vegetarian` = TagDTO(
        name: "Snack"
        )
    
    static let `poultry` = TagDTO(
        name: "Poultry"
    )
    
    static let `glutenFree` = TagDTO(
        name: "Gluten-Free"
        )
}
