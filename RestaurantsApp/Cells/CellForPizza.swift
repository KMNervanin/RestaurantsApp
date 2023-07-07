//
//  CustomTableViewCell.swift
//  RestaurantsApp
//
//  Created by Дария Синицына on 25.06.2023.
//

import UIKit

    class CellForPizza: UITableViewCell {

        @IBOutlet weak var pizzaImageView: UIImageView!
        
        @IBOutlet weak var nameOfPizza: UILabel!
        
        @IBOutlet weak var descriptionPizza: UILabel!
 
        func configure(for PizzaModel: PizzaModel) {
            nameOfPizza.text = PizzaModel.name
            descriptionPizza.text = PizzaModel.descriptionPizza
            pizzaImageView.image = UIImage(named:PizzaModel.image)
        }
    }
