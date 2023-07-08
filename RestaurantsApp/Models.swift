//
//  Models.swift
//  RestaurantsApp
//
//  Created by Дария Синицына on 07.07.2023.
//

import Foundation

class PizzaModel {
    let name: String
    let image: String
    let descriptionPizza: String
    
    init(name: String, image: String, descriptionPizza: String) {
        self.name = name
        self.image = image
        self.descriptionPizza = descriptionPizza
    }
}
