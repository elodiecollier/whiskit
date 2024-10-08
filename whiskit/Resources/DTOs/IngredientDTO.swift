//
//  IngredientDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct IngredientDTO: Identifiable {
    var id: Int
    var name: String
    var measurement: String?
    var extraNotes: String?
}
