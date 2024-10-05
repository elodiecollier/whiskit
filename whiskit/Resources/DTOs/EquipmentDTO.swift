//
//  EquipmentDTO.swift
//  whiskit
//
//  Created by Elodie Collier on 10/4/24.
//

import Foundation

struct EquipmentDTO: Identifiable {
    var id: Int
    var name: String
    
    static let `skillet` = EquipmentDTO(
        id: 1,
        name: "Skillet"
        )
    
    static let `tongs` = EquipmentDTO(
        id: 2,
        name: "Tongs"
        )
}
