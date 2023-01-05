import UIKit

// продукт
// протокол билдера
// билдер
// директор
// клиент

class Coffee {
    private var components = [String]()
    
    func add(component: String) {
        self.components.append(component)
    }
    
    func listParts() -> String {
            return "Product parts: " + components.joined(separator: ", ") + "\n"
        }
}

protocol CoffeeBuilder {
    func makeACoffee()
    func makeADoubleCoffee()
    func addAPortionOfMilk()
    func addAPortionOfSlivki()
    func addAPortionOfSugar()
    func addAPortionOfKoritsa()
    func addAPortionOfSyrop()
}

class CoffeeBuilder1: CoffeeBuilder {
    
    private var myCoffee = Coffee()
    
    func reset() {
        self.myCoffee = Coffee()
    }
    
    func makeACoffee() {
        myCoffee.add(component: "Coffee")
    }
    
    func makeADoubleCoffee() {
        myCoffee.add(component: "DoubleCoffee")
    }
    
    func addAPortionOfMilk() {
        myCoffee.add(component: "Milk")
    }
    
    func addAPortionOfSlivki() {
        myCoffee.add(component: "Slivki")
    }
    
    func addAPortionOfSugar() {
        myCoffee.add(component: "Sugar")
    }
    
    func addAPortionOfKoritsa() {
        myCoffee.add(component: "Koritsa")
    }
    
    func addAPortionOfSyrop() {
        myCoffee.add(component: "Syrop")
    }

    func result() -> Coffee {
        let result = myCoffee
        myCoffee.listParts()
        reset()
        return result
    }
}

class Customer {
    var getCoffee = Coffee()
    let coffeeBuilder = CoffeeBuilder1()
    
    func getCoffeeWithMilk() {
        coffeeBuilder.makeACoffee()
        coffeeBuilder.addAPortionOfMilk()
        getCoffee = coffeeBuilder.result()
    }
    
    func getDoubleCoffeeWithKoritsaAndSlivki() {
        coffeeBuilder.makeADoubleCoffee()
        coffeeBuilder.addAPortionOfKoritsa()
        coffeeBuilder.addAPortionOfSlivki()
        getCoffee = coffeeBuilder.result()
    }
}

let me = Customer()
me.getCoffeeWithMilk()
print(me.getCoffee.listParts())
me.getDoubleCoffeeWithKoritsaAndSlivki()
print(me.getCoffee.listParts())



