//
//  ViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // Array
    let arrayOfNumbers = [-1, -2, -3, -4, -5, 1, 2, 3, 4, 5]
    //
    let sumOfNumber = [2, 3, 10, 20, 5]
    
    // Dictionary
    var arrayOfString = ["january", "fabruary", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
    
    //
    var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // arrayOfNumbers
        print(positiveNumber(number: arrayOfNumbers))
        print(maxAndMinElement(number: arrayOfNumbers))
        print(sumOfAllNumbers(numbers: sumOfNumber))

        // arrayOfString

        print(arrayOfDic(mounth: arrayOfString))
        print(dic(value: dictionary))
        //
        print(year(mounth: arrayOfString))
    }
    
    // MARK: - Array
    
    /*
    Создайте массив с десятью случайными числами, из которых пять меньше нуля и пять больше нуля
    Замените все отрицательные числа на 0 и выведите массив в консоль
    Найдите минимальный и максимальный элемент в массиве и выведите его в консоль
    Найдите сумму элементов массива чисел и выведите ее в консоль
     */
    
    func positiveNumber (number: [Int]) -> [Int] {
        
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
    
    
    func maxAndMinElement (number: [Int]) -> [Int] {
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
    
    
    func sumOfAllNumbers (numbers: [Int]) -> Int {
        var sum = 0
        
        for value in numbers {
            sum += value
        }
        return sum
    }
    
    
    // MARK: - Dictionary
    
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
        
        for (index, mounth) in arrayOfString.enumerated() {
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

    func year(mounth: [String]) -> [Int:[String]] {
        
        var mounth = mounth
        mounth.append("NEW MOUNTH")
        var calendar: [Int:[String]] = [:]
        
        for item in 1970...2022 {
            let _ = calendar.updateValue(mounth, forKey: item)
        }

        return calendar
    }
    
    
}

