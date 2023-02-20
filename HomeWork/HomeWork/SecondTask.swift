//
//  SecondTask.swift
//  HomeWork
//
//  Created by Олег Курбатов on 20.02.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        //        let alexSailor = Sailor(name: "Alex")
        //        let momoSailor = Sailor(name: "Momo")
        //        momoSailor.introduceMyself()
        //        alexSailor.introduceMyself()
        
        // 2
        //        let ship = Ship(nameOfShip: "Black Sheap", nameOfSailors: ["Alex", "Momo"])
        //        ship.introduceAll()
        
        // 3
        //
        //        let alexSailor = Sailor(name: "Alex")
        //        let momoSailor = Sailor(name: "Momo")
        //        let benSailor = Sailor(name: "Ben")
        //        let bodSailor = Sailor(name: "Bob")
        //        let jacknSailor = Sailor(name: "Jack")
        //
        //        let ship = Ship(nameOfShip: "Black Sheap", nameOfSailors: [alexSailor.name, momoSailor.name, benSailor.name, bodSailor.name, jacknSailor.name])
        //        ship.introduceAll()
        
        
        // 4
        
        let alexSailor = Sailor(name: "Alex")
        let momoSailor = Sailor(name: "Momo")
        let benSailor = Sailor(name: "Ben")
        let bodSailor = Sailor(name: "Bob")
        let jacknSailor = Sailor(name: "Jack")
        
        
        let titanicSailor = TitanicSeilor(name: "Bob")
        titanicSailor.introduceMyself()
        
        let titanic = Titanic(nameOfShip: "Black Sheap", nameOfSailors: [alexSailor.name, momoSailor.name, benSailor.name, bodSailor.name, jacknSailor.name])
        titanic.introduceAll()
        
        
    }
}

// 1. Создайте класс Матрос (Sailor), в котором будет инициализатор, одно свойство -
// имя матроса и один метод "introduceMyself". При вызове этого метода, в консоль будет
// выводиться сообщение "Привет, меня зовут *имя матроса*!"


class Sailor {
    
    var name: String
    
    func introduceMyself() {
        print( "Привет, меня зовут \(name)")
    }
    
    init(name: String) {
        self.name = name
    }
}

//2. Создайте класс Корабль, в котором будет инициализатор, два свойства: название
//  корабля и массив “матросы”. Добавьте также функцию "introduceAll", которая будет
//  выводить приветствие от имени всех матросов, после чего выводить сообщение "Мы с
//  корабля *имя корабля*"


// 3*. Через инициализатор создайте 5 экземпляров класса Матрос и класс Корабль, в
// который передайте список созданных матросов. Вызовите функцию introduceAll. Вы
// должны получить в консоли приветствие от имени всех матросов и название корабля

class Ship {
    
    var nameOfShip: String
    var nameOfSailors =  [Any]()
    
    func introduceAll() {
        print("Привет от \(nameOfSailors). Мы с \(nameOfShip).")
    }
    
    init(nameOfShip: String, nameOfSailors: [Any]) {
        self.nameOfShip = nameOfShip
        self.nameOfSailors = nameOfSailors
        
    }
}


//  4. Создайте класс Titanic, наследник класса Ship. И класс TitanicSeilor, наследник
//  Seilor. Пусть TitanicSeilor будет иметь ту же функцию introduseMyself, но сообщение будет
//  выводить на английском. Аналогично класс Titanic, только пусть его функция introduceAll
//  выводит в на двух языках: то же сообщение что и Ship, а после - такое же сообщение на
//  английском. Не меняйте существующие классы Ship и Seilor

class Titanic: Ship {
    
    override func introduceAll() {
        super.introduceAll()
        print("Hello from \(nameOfSailors). We are from \(nameOfShip)")
    }
}

class TitanicSeilor: Sailor {
    
    override func introduceMyself() {
        print("Hello, my name is \(name)")
    }
    
}
