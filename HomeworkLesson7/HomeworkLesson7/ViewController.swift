//
//  ViewController.swift
//  HomeworkLesson7
//
//  Created by Иван Знак on 22/10/2023.
//

import UIKit

//class Singleton {
//    static let shared = Singleton()
//}
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

class ViewController: UIViewController {

    @IBOutlet weak var snack: UIButton!
    
    @IBOutlet weak var mainMenu: UIButton!
    @IBOutlet weak var secondMainMenu: UIButton!
    @IBOutlet weak var drink: UIButton!
    @IBOutlet weak var dessert: UIButton!
    @IBOutlet weak var mainButton: UIButton!
    
    @IBOutlet weak var mainPriceLabel: UILabel!
    
    func setButtonTitle(){
        snack.setTitle("Bruschette", for: .normal)
        mainMenu.setTitle("Soup 'Borsh'", for: .normal)
        secondMainMenu.setTitle("Beef", for: .normal)
        drink.setTitle("Mojito", for: .normal)
        dessert.setTitle("Strawberry cake", for: .normal)
        mainButton.setTitle("Начать смену", for: .normal)
        mainPriceLabel.text = "Смена не начата"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButtonTitle()
        var mainButtonTapped = false
        
        let snack = Snack(price: 10, name: "Bruschette")
        let mainMenu = MainMenu(price: 25, name: "Soup 'Borsh'")
        let secondMainMenu = MainMenu(price: 30, name: "Beef")
        let drink = Drinks(price: 20, name: "Mojito")
        let dessert = Deserts(price: 20, name: "Strawberry cake")
        let menu = Menu(snack: snack, mainMenu: mainMenu, drink: drink, dessert: dessert)
        func printOutMeal(_ product: Product){
            print("Name: '\(product.name)' and price: '\(product.price)'")
        }
      
        printOutMeal(drink)
    }
    
    @IBAction func snackButtonTapped(_ sender: UIButton) {
        
    }
    @IBAction func mainMenuButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func secondMainMenuButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func drinkButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func dessertButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func mainButtonTapped(_ sender: UIButton) {
    }
}
