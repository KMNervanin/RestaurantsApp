//
//  ViewController.swift
//  RestaurantsApp
//
//  Created by Konstantin on 04.06.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    let pizza = [PizzaModel(name: "Маргарита", image: "1", descriptionPizza: "Сыр Моцарелла, Томатный соус"),
                 PizzaModel(name: "Пепперони", image: "2", descriptionPizza: "Пепперони, Сыр Моцарелла, Томатный соус"),
                 PizzaModel(name: "4 сыра", image: "3", descriptionPizza: "Соус Карбонара, Сыр Чеддер (тёртый), Сыр Моцарелла, Сыр Роккфорти, Чесночный соус с сыром Пармезан"),
                 PizzaModel(name: "Гавайская", image: "4", descriptionPizza: "Ананас, Ветчина, Сыр Моцарелла, Томатный соус"),
                 PizzaModel(name: "Охотничья", image: "5", descriptionPizza: "Бекон, Лук, Огурцы маринованные, Охотничьи колбаски, Сыр Моцарелла, Томатный соус , Соус горчичный"),
                 PizzaModel(name: "Вегетарианская", image: "6", descriptionPizza: "Грибы, Маслины, Свежие томаты, Сыр Моцарелла, Сыр Фета, Томатный соус"),
                 PizzaModel(name: "Чикен BBQ", image: "7", descriptionPizza: "Грибы, Курица, Лук, Соус BBQ, Сыр Моцарелла, Томатный соус"),
                 PizzaModel(name: "Мясная", image: "8", descriptionPizza: "Ветчина, Курица, Охотничьи колбаски, Пепперони, Сыр Моцарелла, Томатный соус"),
                 PizzaModel(name: "Диабло", image: "9", descriptionPizza: "Лук, Пепперони, Перец Халапеньо, Свежие томаты, Сыр Моцарелла, Томатный соус"),
                 PizzaModel(name: "4 сезона", image: "10", descriptionPizza: "Бекон, Ветчина, Грибы, Курица, Лук, Маслины, Огурцы маринованные, Охотничьи колбаски, Пепперони, Свежие томаты, Соус BBQ, Сыр Моцарелла, Сыр Фета, Томатный соус"),
                 PizzaModel(name: "Чикен Ранч", image: "11", descriptionPizza: "Курица, Свежие томаты, Сыр Моцарелла, Соус Чесночный Оригинальный"),
                 PizzaModel(name: "С тунцом", image: "12", descriptionPizza: "Лук, Маслины, Свежие томаты, Сыр Моцарелла, Соус Чесночный Оригинальный, Тунец"),
                 PizzaModel(name: "Микс BBQ", image: "13", descriptionPizza: "Бекон, Ветчина, Курица, Лук, Соус BBQ, Сыр Моцарелла, Томатный соус"),
                 PizzaModel(name: "Дабл Пепперони", image: "14", descriptionPizza: "Пепперони х2, Сыр Моцарелла, Томатный соус"),
                 PizzaModel(name: "Чикен Песто", image: "15", descriptionPizza: "Курица, Свежие томаты, Сыр Моцарелла, Сыр Фета, Томатный соус, Соус Песто с базиликом"),
    ]
    
    var tableView = UITableView()
    let customImageView = UIImageView()
    let identifire = "Pizza"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTitle()
        createTable()
    }
    
    func createTitle() {
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "Меню"
        self.navigationController?.navigationBar.isTranslucent = true
        
    }
    
    func createTable() {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifire)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        view.addSubview(tableView)
       
        tableView.register(UINib(nibName: String(describing: CustomTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CustomTableViewCell.self))
        
        tableView.snp.makeConstraints {
            $0.left.right.equalToSuperview().inset(0)
            $0.top.bottom.equalToSuperview().inset(0)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pizza.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomTableViewCell.self))
        as! CustomTableViewCell
        let pizzaModel = pizza[indexPath.row]
        cell.configure(for: pizzaModel)
        cell.customImageView.image = UIImage(named:pizzaModel.image ?? "2")
        cell.addSubview(customImageView)
        return cell
    }
}

