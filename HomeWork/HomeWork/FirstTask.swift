//
//  ViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //
    let arrayOfNumbers = [-1, -2, -3, -4, -5, 1, 2, 3, 4, 5]
    //
    let sumOfNumber = [2, 3, 10, 20, 5]
    //
    var arrayOfMounth = ["january", "fabruary", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
    var year = [Int](1970...2022)
    var day: [Int] = []
    //
    var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
    //
    var calendar: [Int:[String]] = [:]
    //
    let phraseUsa = "Hello how are you!"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        print(positiveNumber(number: arrayOfNumbers))
        // 2
        print(maxAndMinElement(number: arrayOfNumbers))
        // 3
        print(sumOfAllNumbers(numbers: sumOfNumber))
        // 4
        print(arrayOfDic(mounth: arrayOfMounth))
        // 5
        print(dic(value: dictionary))
        // 6
        print(yearCalendar(mounth: arrayOfMounth))
        // 7
        number(numberOne: 6, numberTwo: 1)
        // 8
        print(createCalendarPro())
        // 9
        print(mobile(percent: 34))
        // 10
        createPhrase(phrase: phraseUsa)
        
    }
    
    /*
     Создайте массив с десятью случайными числами, из которых пять меньше нуля и пять больше нуля
     Замените все отрицательные числа на 0 и выведите массив в консоль
     Найдите минимальный и максимальный элемент в массиве и выведите его в консоль
     Найдите сумму элементов массива чисел и выведите ее в консоль
     */
    
    func positiveNumber(number: [Int]) -> [Int] {
        
        var newArray: [Int] = []
        for value in number {
            if value < 0 {
                newArray.append(0)
            } else if value >= 0 {
                newArray.append(value)
            }
        }
        return newArray
    }
    
    func maxAndMinElement(number: [Int]) -> [Int] {
        var maxNumber = 0
        var minNumber = 0
        
        for value in number {
            if minNumber < value {
                minNumber = value
            } else if maxNumber > value {
                maxNumber = value
            }
        }
        return [maxNumber, minNumber]
    }
    
    func sumOfAllNumbers(numbers: [Int]) -> Int {
        var sum = 0
        
        for value in numbers {
            sum += value
        }
        return sum
    }
    
    /*
     Создайте массив с названиями всех месяцев, типа String. Затем создайте словарь и с
     помощью цикла задайте ему значения на основании массива: где в качестве ключей
     будут выступать цифры (индексы), а в качестве значений - элементы массива.
     Создайте словарь:
     var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
     Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый
     словарь
     
     */
    
    func arrayOfDic(mounth: [String]) -> [Int:String] {
        var dic: [Int:String] = [:]
        
        for (index, mounth) in arrayOfMounth.enumerated() {
            let _ = dic.updateValue(mounth, forKey: index + 1)
        }
        return dic
    }
    
    //
    func dic(value: [String:Int]) -> [String:Int] {
        var newDic: [String:Int] = [:]
        
        let _ = newDic.updateValue(1, forKey: "fourth")
        let _ = newDic.updateValue(4, forKey: "first")
        
        return newDic
    }
    
    /*
     Создайте пустой словарь calendar, так же вам понадобиться массив с месяцами из
     четвертого задания.
     С помощью цикла от 1970 до 2022 задайте значения для словаря. В качестве ключа
     пусть будет год, а значение это массив с месяцами.
     С помощью другого цикла добавьте в calendar на каждый год по одному месяцу с
     вашим названием, чтобы в каждом году вышло 13 месяцев.
     */
    
    func yearCalendar(mounth: [String]) -> [Int:[String]] {
        
        var mounth = mounth
        mounth.append("NEW MOUNTH")
        
        for item in year {
            let _ = calendar.updateValue(mounth, forKey: item)
        }
        
        return calendar
    }
    
    /*
     =   На основании словаря, который у вас получился в седьмом задании, давайте
     создадим новый словарь, который будет включать в себя также и даты, a именно массив
     с числами от 1 до 31:
     ● Создайте массив с числами от 1 до 31 с помощью цикла.
     ● Создайте новый словарь calendarPro, где в качестве ключей будут года, в качестве
     значений вложенные словари. В которых в качестве ключей названия месяцев, а в
     качестве значений массив с днями созданный выше.
     PS: Для заполнения calendarPro используйте только созданный массив с числами, и
     словарь с месяцами, и никаких других данных
     */
    
    func createCalendarPro() {
        for item in 1...31 {
            day.append(item)
        }
        let calendarPro = [year: [arrayOfMounth: day]]
        
        for (years, mounth) in calendarPro {
            print("\(mounth.values) - \(mounth.keys) - \(years)")
        }
    }
        
    /*
     Создайте 2 переменные с числами. Если значения равны, выведите в консоль их
     сумму умноженную на 3, если нет, выведите в консоль их сумму в случае если она четное
     число.
     
     Создайте строку, в которой будет храниться любая фраза из трех или более слов c
     восклицательным знаком в конце. Выведите в консоль первое и последнее слово из этой
     строки (без восклицательного знака).
     В этом задании необходимо найти способ доставать слова из вашей строки, погуглите
     методы с помощью которых это возможно реализовать.
     */
    
    func number(numberOne: Int, numberTwo: Int) {
        var sum = 0
        
        if numberOne == numberTwo {
            sum = (numberOne + numberTwo) * 3
            print(sum)
        } else if numberOne != numberTwo {
            sum = numberOne + numberTwo
            if sum % 2 == 0 {
                print(sum)
            }
        }
    }
    
    func createPhrase(phrase: String) -> String {
        let newPhrase = phrase
        
        let firstWord = newPhrase[newPhrase.index(newPhrase.startIndex, offsetBy: 0)...newPhrase.index(newPhrase.startIndex, offsetBy: 4)]
        print(firstWord)
        let secondWord = newPhrase[newPhrase.index(newPhrase.endIndex, offsetBy: -4)...newPhrase.index(newPhrase.endIndex, offsetBy: -2)]
        print(secondWord)
        
        return newPhrase
    }
    
    /*
     Создайте функцию которая принимает 1 параметр, процент заряда батареи. Пусть
     функция вернет сообщения для пользователя в зависимости от этого процента:
     ● если 100%: “Устройство заряжено”,
     ● если 70-80%, “Необходимо зарядить устройство в течении 6 часов”
     ● если 20-40%, “Поставьте устройство на зарядку”
     ● если 0%, “Устройство полностью разряжено”
     В остальных случаях не выводите ничего. Используйте switch case
     */
    
    func mobile(percent: Int) -> String {
        let percent = percent
        
        switch percent {
        case 100:
            return "Устройство заряжено"
        case 70...80:
            return "Необходимо зарядить устройство в течении 6 часов"
        case 20...40:
            return "Поставьте устройство на зарядку"
        case 0:
            return "Устройство полностью разряжено"
        default:
            return ""
        }
    }
}

