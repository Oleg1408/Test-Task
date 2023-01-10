//
//  ViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let arrayOfNumbers = [-1, -2, -3, -4, -5, 1, 2, 3, 4, 5]
    let sumOfNumber = [2, 3, 10, 20, 5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(positiveNumber(number: arrayOfNumbers))
        print(maxAndMinElement(number: arrayOfNumbers))
        print(sumOfAllNumbers(numbers: sumOfNumber))
        
    }
    
    // MARK: - Array
    
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
    
    // Stop Array
    
    
    
    
}

