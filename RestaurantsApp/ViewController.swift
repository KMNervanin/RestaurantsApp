//
//  ViewController.swift
//  RestaurantsApp
//
//  Created by Konstantin on 04.06.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let pizzasNames = [
        "Pizza1", "Pizza2", "Pizza3", "Pizza4", "Pizza5", "Pizza6", "Pizza7", "Pizza8", "Pizza9", "Pizza10", "Pizza11", "Pizza12", "Pizza13", "Pizza14", "Pizza15", "Pizza16", "Pizza17", "Pizza18", "Pizza19", "Pizza20", "Pizza21", "Pizza22", "Pizza23", "Pizza24", "Pizza25", "Pizza26", "Pizza27", "Pizza28", "Pizza29", "Pizza30"
    ]
    
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzasNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ident = "Pizza"
        var cell: UITableViewCell
        cell = tableView.dequeueReusableCell(withIdentifier: ident)!
        cell.textLabel?.text = pizzasNames[indexPath.row]
        return cell
    }
}


