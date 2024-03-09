//
//  HouseModel.swift
//  Real Estate App Ui
//
//  Created by tade on 09/03/2024.
//

import Foundation

struct HouseModel: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var price: Int
    var isForSale: Bool
    var address: String
    
    init(id: UUID = UUID(), image: String, name: String, price: Int, isForSale: Bool, address: String) {
        self.id = id
        self.image = image
        self.name = name
        self.price = price
        self.isForSale = isForSale
        self.address = address
    }
    
}


