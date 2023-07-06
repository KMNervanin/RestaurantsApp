//
//  CustomTableViewCell.swift
//  RestaurantsApp
//
//  Created by Дария Синицына on 25.06.2023.
//

import UIKit

class PizzaModel {
    let name:String?
    let image:String?
    let descriptionPizza:String?
    
    init(name: String?, image: String?, descriptionPizza: String?) {
        self.name = name
        self.image = image
        self.descriptionPizza = descriptionPizza
    }
}

    class CustomTableViewCell: UITableViewCell {

        @IBOutlet weak var customImageView: UIImageView!
        
        @IBOutlet weak var nameOfPizza: UILabel!
        
        @IBOutlet weak var descriptionPizza: UILabel!
        
        override func awakeFromNib() {
            super.awakeFromNib()
        }

        func configure(for PizzaModel: PizzaModel) {
            nameOfPizza.text = PizzaModel.name
            descriptionPizza.text = PizzaModel.descriptionPizza
        }
    }
