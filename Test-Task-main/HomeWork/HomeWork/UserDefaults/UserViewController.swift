//
//  UserViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 21.09.2023.
//

import UIKit


class UserModels: NSObject, NSCoding {
    
    var name: String
    var secondName: String
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(secondName, forKey: "secondName")
        
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String ?? ""
        secondName = coder.decodeObject(forKey: "secondName") as? String ?? ""
    }
    
}



class UserViewController: UIViewController {
    
    
    @IBOutlet var mainViewController: UIView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var secondNameField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsController()
        
        nameField.text = SettingsUsers.userModels.name
        secondNameField.text = SettingsUsers.userModels.secondName
        
    }
    
    private func settingsController() {
        mainViewController.backgroundColor = .red
    }
    
    
    @IBAction func pressButtonSave(_ sender: Any) {
        
        guard let trimmingName = nameField.text?.trimmingCharacters(in: .whitespaces) else {return}
        guard let trimmingSecondName = secondNameField.text?.trimmingCharacters(in: .whitespaces) else {return}
        let objUser = UserModels(name: trimmingName, secondName: trimmingSecondName)
        SettingsUsers.userModels = objUser
    }
}
