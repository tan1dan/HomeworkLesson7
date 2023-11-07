//
//  ViewController.swift
//  HomeworkLesson7
//
//  Created by Иван Знак on 22/10/2023.
//

import UIKit

class Singleton{
    static let shared = Singleton()
    var mainButtonStatus = 0
    var sumOfDay = 0
    let menu: Menu = Menu(snack: snack, mainMenu: [mainMenu, secondMainMenu], drink: drink, dessert: dessert)
}

class Menu {
    var snack: Product
    var mainMenu: [Product]
    var drink: Product
    var dessert: Product
    init(snack: Product, mainMenu: [Product], drink: Product, dessert: Product) {
        self.snack = snack
        self.mainMenu = mainMenu
        self.drink = drink
        self.dessert = dessert
    }
}

class Product{
    var price: Int
    var name: String
    init(price: Int, name: String) {
        self.price = price
        self.name = name
    }
}

class Snack: Product{
    override init(price: Int, name: String){
        super.init(price: price, name: name)
    }
    
}

class MainMenu: Product{
    override init(price: Int, name: String){
        super.init(price: price, name: name)
    }
}

class Drinks: Product{
    override init(price: Int, name: String){
        super.init(price: price, name: name)
    }
}

class Deserts: Product{
    override init(price: Int, name: String){
        super.init(price: price, name: name)
    }
}

let snack = Snack(price: 10, name: "Bruschette")
let mainMenu = MainMenu(price: 25, name: "Soup 'Borsh'")
let secondMainMenu = MainMenu(price: 30, name: "Beef")
let drink = Drinks(price: 20, name: "Mojito")
let dessert = Deserts(price: 20, name: "Strawberry cake")

class ViewController: UIViewController {

    @IBOutlet weak var snackButton: UIButton!
    
    @IBOutlet weak var mainMenuButton: UIButton!
    @IBOutlet weak var secondMainMenuButton: UIButton!
    @IBOutlet weak var drinkButton: UIButton!
    @IBOutlet weak var dessertButton: UIButton!
    @IBOutlet weak var mainButton: UIButton!
    
    @IBOutlet weak var mainPriceLabel: UILabel!
    
    func setButtonTitle(){
        snackButton.setTitle("Bruschette", for: .normal)
        mainMenuButton.setTitle("Soup 'Borsh'", for: .normal)
        secondMainMenuButton.setTitle("Beef", for: .normal)
        drinkButton.setTitle("Mojito", for: .normal)
        dessertButton.setTitle("Strawberry cake", for: .normal)
        mainButton.setTitle("Начать смену", for: .normal)
        mainPriceLabel.text = "Смена не начата"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonTitle()
    }
    
   
    
//    func printOutMeal(_ product: Product){
//        print("Name: '\(product.name)' and price: '\(product.price)'")
//    }
    
    
    
    @IBAction func snackButtonTapped(_ sender: UIButton) {
        if Singleton.shared.mainButtonStatus == 1 {
            Singleton.shared.sumOfDay+=snack.price
            mainPriceLabel.text = "+ \(snack.name)"
        }
        
    }
    @IBAction func mainMenuButtonTapped(_ sender: UIButton) {
        if Singleton.shared.mainButtonStatus == 1 {
            Singleton.shared.sumOfDay += mainMenu.price
            mainPriceLabel.text = "+ \(mainMenu.name)"
        }
    }
    
    @IBAction func secondMainMenuButtonTapped(_ sender: UIButton) {
        if Singleton.shared.mainButtonStatus == 1 {
            Singleton.shared.sumOfDay+=secondMainMenu.price
            mainPriceLabel.text = "+ \(secondMainMenu.name)"
        }
    }
    
    @IBAction func drinkButtonTapped(_ sender: UIButton) {
        if Singleton.shared.mainButtonStatus == 1 {
            Singleton.shared.sumOfDay += drink.price
            mainPriceLabel.text = "+ \(drink.name)"
        }
    }
    
    @IBAction func dessertButtonTapped(_ sender: UIButton) {
        if Singleton.shared.mainButtonStatus == 1 {
            Singleton.shared.sumOfDay += dessert.price
            mainPriceLabel.text = "+ \(dessert.name)"
        }
    }
    
    @IBAction func mainButtonTapped(_ sender: UIButton) {
        if Singleton.shared.mainButtonStatus == 0 {
            mainButton.setTitle("Закончить смену", for: .normal)
            Singleton.shared.mainButtonStatus = 1
            mainPriceLabel.text = "Смена начата"
            
        }
        else if Singleton.shared.mainButtonStatus == 1 {
            mainButton.setTitle("Выйти из системы", for: .normal)
            Singleton.shared.mainButtonStatus = 2
            mainPriceLabel.text = "Выручка за смену: \(Singleton.shared.sumOfDay)$. Чтобы полностью закончить смену выйдите из системы"
            print("Выручка за смену: \(Singleton.shared.sumOfDay)$")
        }
        else {
            mainButton.setTitle("Начать смену", for: .normal)
            mainPriceLabel.text = "Смена не начата"
            Singleton.shared.mainButtonStatus = 0
            Singleton.shared.sumOfDay = 0
        }
    }
}
