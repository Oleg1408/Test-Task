//
//  JsonViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 06.09.2023.
//

import UIKit

struct Company: Codable {
    let company: CompanyInfo
}

struct CompanyInfo: Codable {
    let count: Int
    let companyDescription: String
    let listOfData: [Device]
}

struct Device: Codable {
    let name: String
    let modelNumber: String
    let countries: [String]
    let price: PriceInfo
    let year: Int
}

struct PriceInfo: Codable {
    let regions: [RegionPrice]
}

struct RegionPrice: Codable {
    let name: String
    let price: Int
}


class JsonViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let filePath = Bundle.main.url(forResource:"RawData", withExtension: "json") else {return}
       
        do {
            let data = try Data(contentsOf: filePath)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(Company.self, from: data)
            print(jsonData)

        } catch {
            print(error)
        }
    }
}
