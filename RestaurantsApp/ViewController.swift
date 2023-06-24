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
    
    var tableView = UITableView()
    
    let identifire = "Pizza"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTitle()
        createTable()
    }
    
    func createTitle() {
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "Menu"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    func createTable() {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifire)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.left.right.equalToSuperview().inset(0)
            $0.top.bottom.equalToSuperview().inset(0)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzasNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifire, for:indexPath)
        cell.textLabel?.text = pizzasNames[indexPath.row]
        return cell
    }
}
