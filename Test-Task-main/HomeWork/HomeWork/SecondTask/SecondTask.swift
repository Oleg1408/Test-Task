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
        //                let alexSailor = Sailor(name: "Alex")
        //                let momoSailor = Sailor(name: "Momo")
        //                momoSailor.introduceMyself()
        //                alexSailor.introduceMyself()
        // 2
        //                let ship = Ship(nameOfShip: "Black Sheap", nameOfSailors: ["Alex", "Momo"])
        //                ship.introduceAll()
        // 3
        //                let alexSailor = Sailor(name: "Alex")
        //                let momoSailor = Sailor(name: "Momo")
        //                let benSailor = Sailor(name: "Ben")
        //                let bodSailor = Sailor(name: "Bob")
        //                let jacknSailor = Sailor(name: "Jack")
        //
        //                let ship = Ship(nameOfShip: "Black Sheap", nameOfSailors: [alexSailor.name, momoSailor.name, benSailor.name, bodSailor.name, jacknSailor.name])
        //                ship.introduceAll()
        // 4
        
        //                let alexSailor = Sailor(name: "Alex")
        //                let momoSailor = Sailor(name: "Momo")
        //                let benSailor = Sailor(name: "Ben")
        //                let bodSailor = Sailor(name: "Bob")
        //                let jacknSailor = Sailor(name: "Jack")
        //
        //
        //                let titanicSailor = TitanicSeilor(name: "Bob")
        //                titanicSailor.introduceMyself()
        //
        //                let titanic = Titanic(nameOfShip: "Black Sheap", nameOfSailors: [alexSailor.name, momoSailor.name, benSailor.name, bodSailor.name, jacknSailor.name])
        //                titanic.introduceAll()
        // 5
        //        let calc = Calculator()
        //        calc.plus(numberOne: 1, numberTwo: 1)
        //        calc.degree(numberOne: 20, numberTwo: 313)
        //        //
        //        let calcPro = CalculatorPro()
        //        calcPro.percentageСalculation(numberOne: 100, percent: 25, degree: 2)
        //6
        //
        //        let superCalc = SuperProCalc()
        //        superCalc.hardPercent(firstSum: 100, years: 1, yearPercent: 2)
        
        
        //
        
        //
        //
        //        let bob = King(name: "Bob")
        //        let tod = King(name: "Tod")
        //
        //        let ben = Farmer(name: "Ben")
        //        let alex = Farmer(name: "Alex")
        //
        //        let tamara = Inhabitant(name: "Tamara")
        //        let irina = Inhabitant(name: "Irina")
        //
        //        let oleg = Butcher(name: "Oleg")
        //        let sasha = Butcher(name: "Sasha")
        //
        //        let artem = Soldier(name: "Artem")
        //        let tim = Soldier(name: "Tim")
        //
        //
        //        let blackTaverna = Taverna()
        //
        //        blackTaverna.movers.append(ben)
        //        blackTaverna.movers.append(alex)
        //        blackTaverna.movers.append(tamara)
        //        blackTaverna.movers.append(irina)
        //        blackTaverna.fighters.append(oleg)
        //        blackTaverna.fighters.append(sasha)
        //
        //        blackTaverna.enterTaverna(hero: bob)
        //        blackTaverna.enterTaverna(hero: tod)
        //        blackTaverna.enterTaverna(hero: artem)
        //        blackTaverna.enterTaverna(hero: tim)
        
        //
        //        let alex = Forward(name: "Alex", haveBall: true)
        //        let bob = Defender(name: "Bob", atThePosition: false)
        //
        //        let match = FootballMatch()
        //
        //        match.attacker.append(alex)
        //        match.defender.append(bob)
        //        match.atTheField(player: alex)
        
        
        
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

// 5.Создайте класс Calculator, с функциями + - * /.
// Создайте класс CalculatorPro, который будет также вычислять процент от числа и возводить число в степень


class Calculator {
    
    func plus(numberOne: Int, numberTwo: Int) {
        print("Answer plus is – \(numberOne + numberTwo)")
    }
    
    func minus(numberOne: Int, numberTwo: Int) {
        print("Answer minus is – \(numberOne - numberTwo)")
    }
    
    func multiply(numberOne: Int, numberTwo: Int) {
        print("Answer multiply is – \(numberOne * numberTwo)")
    }
    
    func degree(numberOne: Int, numberTwo: Int) {
        print("Answer degree is – \(numberOne / numberTwo)")
    }
    
}


class CalculatorPro {
    
    func percentageСalculation(numberOne: Double, percent: Double, degree: Double) {
        
        let valueOfPercent = (numberOne * percent) / 100
        print("Percent is – \(valueOfPercent)")
        print("Number of degree is - \(pow(Double(valueOfPercent), degree))")
    }
}

//    6 Создайте класс SuperProCalc, наследник CalculatorPro, который будет вычислять
//    сложные проценты для расчета суммы депозита на указанный период времени с
//    указанной процентной ставкой


class SuperProCalc: CalculatorPro {
    
    func hardPercent(firstSum: Double, years: Double, yearPercent: Double) -> Double {
        let result = firstSum * pow((1 + yearPercent/100), years)
        print("I give back – \(result) dollars")
        return result
    }
}

//Попробуем создать персонажей для игры.
// 7. Создайте протокол Movable, в котором будет метод run(), протокол Fightable с методом fight()
// Создайте протокол Hero, который включает оба протокола и свойство name


protocol Movable {
    
    func run()
}

protocol Fightable {
    
    func fight()
}

protocol Hero: Movable, Fightable {
    
    var name: String {get set}
}


extension Movable {
    
    func run() {
        print("")
    }
}

extension Fightable {
    func fight() {
        print("")
    }
}

//8. Создайте не менее двух персонажей для игры на каждый протокол из трех
// описанных выше. Например struct Farmer: Movable { … }, struct Butcher: Fightable и т д.
// Реализуйте методы в зависимости от структуры которую вы используете. В нашем
// примере в реализации метода run() у структуры Farmer мы можем вывести print(“Farmer:
// Run”), в методе fight() у Butcher можем вывести print(“Butcher: fight”)


struct King: Hero {
    
    var name: String
    
    func run() {
        print("King \(name): run") }
    
    func fight() {
        print("King \(name): fight")
    }
    
}


struct Farmer: Movable {
    
    var name: String
    
    func run() {
        print("Farmer \(name): run")
    }
}


struct Inhabitant: Movable {
    
    var name: String
    
    func run() {
        print("Inhabitant \(name): run")
    }
}


struct Butcher: Fightable {
    var name: String
    
    func fight() {
        print("Butcher \(name): fight")
    }
}


struct Soldier: Hero {
    var name: String
    
    func run() {
        print("Soldier \(name): run")
    }
    
    func fight() {
        print("Soldier \(name): fight")
    }
}


//9. Создайте класс Tavern (таверна). У нее должен быть массив всех юнитов в таверне,
//которые умеют сражаться: var fighters: [Fightable] = [], и аналогичный массив movers,
//принимающий объекты что могут двигаться. Также в таверне будет метод enterTavern(hero:
//Hero)
//В реализации этого метода будет:
// вызываться метод fight у Hero
// выполняться цикл for по массиву movers, у каждого элемента будет вызываться метод run
// аналогично с предыдущим пунктом, только у fighters метод fight()

//10. Время протестировать все созданные типы и протоколы.

//Создайте экземпляры всех типов: по 2 персонажа для Movable, Fightable и Hero. Пример: var
//alice = Fermer() … Создайте экземпляр таверны.

//Присвойте свойствам таверны значения: в массив movers передайте экземпляры что могут
//двигаться, в массив fighters тех кто могут сражаться

//Обратитесь к таверне и вызовите метод enterTavern для двух экземпляров соответствующих
//протоколу Hero

//В итоге в консоли должно пройти текстовое сражение, вывод имени героя, посетившего
//таверну и начавшего сражение, после имена тех кто разбегаются, после имена тех кто
//сражается



class Taverna {
    
    var fighters: [Fightable] = []
    var movers: [Movable] = []
    
    func enterTaverna(hero: Hero) {
        hero.fight()
        
        for item in movers {
            item.run()
        }
        for item in fighters {
            item.fight()
        }
    }
}

//11*. Лучший способ закрепить информацию, придумать свой способ применения протоколов.
// Необходимо создать свою мини игру, где вы могли бы использовать протоколы, но будет минимальный набор требований:
// Должны быть функции, возвращающие опциональные значения
// Эти функции должны вызываться и опционалы должны быть “развернуты”

protocol Attacking {
    func attack() -> String?
}

protocol Defendering {
    func defend() -> String?
}

protocol Player: Attacking, Defendering {
    var name: String {get}
    var haveBall: Bool {get}
}

struct Forward: Player {
    var name: String
    var haveBall: Bool
    
    func attack() -> String? {
        let haveBall = haveBall ? "\(name) tack a GOOOOOL!" : "\(name) lost the ball"
        return haveBall
    }
    
    func defend() -> String? {
        let haveBall = haveBall ? "\(name) took the ball" : "\(name) lost the ball and other team continue attack"
        return haveBall
    }
}

struct Defender: Defendering {
    
    var name: String
    var atThePosition: Bool
    
    func defend() -> String? {
        
        if atThePosition {
            return "\(name) save the gates"
        } else if atThePosition == false {
            return "\(name) missed a player"
        }
        return "defender attacking"
    }
}


class FootballMatch {
    
    var attacker: [Attacking] = []
    var defender: [Defendering] = []
    
    func atTheField(player: Player) {
        
        for value in defender {
            print(value.defend() ?? "")
        }
        for value in attacker {
            print(value.attack() ?? "")
        }
    }
    
    
}

//12. Напишите расширения на следующие типы:
// Int - Функция возводит число в N-ую степень. Попробуйте решить задачу без использования
// стандартной функции pow(), решите ее с использованием циклов
// String - Вычисляемое свойство isPalindrome. Возвращает Bool, в зависимости от того является
//ли строка палиндромом
//Не забывайте, что вы можете искать информацию в интернете. Протестируйте новые расширения c
//разными данными, используйте не менее трех тестов на каждый тип, которые максимально
//отличаются между собой

//13*. Вернитесь к созданной вами игре во втором задании и добавьте для всех протоколов
//реализацию методов по умолчанию


extension Int {
    
    func numberDegree(number: Int, degree: Int) -> Int {
        var answer = 1
        for _ in 1...degree {
            answer *= number
        }
        return answer
    }
}

extension String {
    var isPalindrome: Bool {return self == String(self.reversed())}
}

extension String {
    var reversedText: String {return String(self.reversed())}
}

extension Double {
    var celsius: Double { return self }
    var kelvin: Double { return self + 273.15 }
    var fahrenheit: Double { return (self * 1.8) + 32 }
}

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
