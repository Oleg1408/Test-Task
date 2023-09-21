//
//  SettingsUsers.swift
//  HomeWork
//
//  Created by Олег Курбатов on 21.09.2023.
//

import Foundation


final class SettingsUsers {
    
    
    private enum saveKeys: String {
        case usersModel
    }
    
    static var userModels: UserModels! {
        
        get {
            guard let saveData = UserDefaults.standard.object(forKey: saveKeys.usersModel.rawValue) as? Data,
                  let decodeModel = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(saveData) as? UserModels else {return nil}
            return decodeModel
        } set {
            let defaults = UserDefaults.standard
            let key = saveKeys.usersModel.rawValue
            
            if let usersModel = newValue {
                if let saveData = try? NSKeyedArchiver.archivedData(withRootObject: usersModel, requiringSecureCoding: false) {
                    defaults.set(saveData, forKey: key)
                }
            }
        }
    }
}
