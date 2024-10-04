//
//  RecipeStepDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct RecipeStepDTO: Hashable, Codable, Identifiable {
    var id: Int
    var text: String
}