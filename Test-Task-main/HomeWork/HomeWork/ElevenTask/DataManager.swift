//
//  DataManager.swift
//  HomeWork
//
//  Created by Олег Курбатов on 25.10.2023.
//

import Foundation
import RealmSwift

class DataManager {
    
    let realm = try? Realm()

    func saveList(_ listName: String) {
        let shoppingName = List()
        shoppingName.name = listName
        
        try? realm?.write {
            realm?.add(shoppingName)
        }
        
    }
    
    func deleteList(_ list: List) {
        try? realm?.write {
            realm?.delete(list)
        }
    }
    
    
    func getList() -> [List] {
        var list = [List]()
        guard let listName = realm?.objects(List.self) else {
            return []
        }
        
        for listSh in listName {
            list.append(listSh)
        }
        return list
    }

}
