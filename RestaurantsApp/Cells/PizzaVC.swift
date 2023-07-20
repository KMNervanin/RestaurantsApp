//
//  PizzaVC.swift
//  RestaurantsApp
//
//  Created by Дария Синицына on 11.07.2023.
//

import UIKit

class PizzaVC: UIViewController {

    var navTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = navTitle
    }
    
}
