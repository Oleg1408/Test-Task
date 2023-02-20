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
        
        let alexSailor = Sailor(name: "Alex")
        let momoSailor = Sailor(name: "Momo")
        momoSailor.introduceMyself()
        alexSailor.introduceMyself()
        
        
        let ship = Ship(nameOfShip: "Black Sheap", nameOfSailors: ["Alex", "Momo"])
        ship.introduceAll()
        
    }
}

// 1. Создайте класс Матрос (Sailor), в котором будет инициализатор, одно свойство -
// имя матроса и один метод "introduceMyself". При вызове этого метода, в консоль будет
// выводиться сообщение "Привет, меня зовут *имя матроса*!"


class Sailor {
    
    var name: String
    
    func introduceMyself() {
        print( "Hello, my name is \(name)")
    }
    
    init(name: String) {
        self.name = name
    }
}

//2. Создайте класс Корабль, в котором будет инициализатор, два свойства: название
//  корабля и массив “матросы”. Добавьте также функцию "introduceAll", которая будет
//  выводить приветствие от имени всех матросов, после чего выводить сообщение "Мы с
//  корабля *имя корабля*"


class Ship {
    
    var nameOfShip: String
    var nameOfSailors =  [String]()
    
    func introduceAll() {
        print("Hello from \(nameOfSailors). We are from \(nameOfShip).")
    }
    
    init(nameOfShip: String, nameOfSailors: [String]) {
        self.nameOfShip = nameOfShip
        self.nameOfSailors = nameOfSailors
    }
    
}
