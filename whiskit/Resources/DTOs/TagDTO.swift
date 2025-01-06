//
//  TagDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 1/4/25.
//

import Foundation

struct TagDTO: Identifiable, Equatable {
    var id: Int
    var tagName: String
    
    static let `vegetarian` = TagDTO(
        id: 1,
        tagName: "Vegetarian"
    )
    
    static let `poultry` = TagDTO(
        id: 2,
        tagName: "Poultry"
    )
    
    static let `glutenFree` = TagDTO(
        id: 3,
        tagName: "Gluten-Free"
    )
    
    static let `seafood` = TagDTO(
        id: 4,
        tagName: "Seafood"
    )
    
    static let `breakfast` = TagDTO(
        id: 5,
        tagName: "Breakfast"
    )
}
