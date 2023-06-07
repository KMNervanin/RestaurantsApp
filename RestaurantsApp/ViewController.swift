//
//  ViewController.swift
//  RestaurantsApp
//
//  Created by Konstantin on 04.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var pizza1: UILabel!
    
    @IBOutlet weak var pizza2: UILabel!
    
    @IBOutlet weak var pizza3: UILabel!
    
    @IBOutlet weak var pizza4: UILabel!
    
    @IBOutlet weak var pizza5: UILabel!
    
    @IBOutlet weak var pizza6: UILabel!
    
    @IBOutlet weak var pizza7: UILabel!
    
    @IBOutlet weak var pizza8: UILabel!
    
    @IBOutlet weak var pizza9: UILabel!
    
    @IBOutlet weak var pizza10: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
          header.text = "Меню"
          pizza1.text = "Маргарита"
          pizza2.text = "Пепперони"
          pizza3.text = "4 сыра"
          pizza4.text = "Гавайская"
          pizza5.text = "Мясная"
          pizza6.text = "Вегетарианская"
          pizza7.text = "Деревенская"
          pizza8.text = "Домашняя"
          pizza9.text = "Любимая"
          pizza10.text = "С сюрпризом"
    
    }
  
}

