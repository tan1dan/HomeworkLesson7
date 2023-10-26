//
//  ViewController.swift
//  HomeworkLesson7
//
//  Created by Иван Знак on 22/10/2023.
//

import UIKit

class Menu {
    var snack: Product
    var mainMenu: Product
    var drink: Product
    var dessert: Product
    init(snack: Product, mainMenu: Product, drink: Product, dessert: Product) {
        self.snack = snack
        self.mainMenu = mainMenu
        self.drink = drink
        self.dessert = dessert
    }
}

class Product {
    var price: Int
    var name: String
    init(price: Int, name: String) {
        self.price = price
        self.name = name
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let snack = Product(price: 10, name: "Snikers")
        let mainMenu = Product(price: 30, name: "Beef")
        let drink = Product(price: 20, name: "Latte")
        let dessert = Product(price: 20, name: "Cake")
        let menu = Menu(snack: snack, mainMenu: mainMenu, drink: drink, dessert: dessert)
        func printOutMeal(_ product: Product){
            print("Name: '\(product.name)' and price: '\(product.price)'")
        }
        printOutMeal(mainMenu)
    }


}

