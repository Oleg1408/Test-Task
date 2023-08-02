//
//  InstaViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 06.07.2023.
//

import UIKit

class InstaViewController: UIViewController {
    
    
    @IBOutlet weak var mainTable: UITableView!
    
    let personList: [Post] = listUsers.usersList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerTableView()
    }
    
    
    private func registerTableView() {
        mainTable.register(UINib(nibName: "UsersTableViewCell", bundle: nil), forCellReuseIdentifier: "UsersTableViewCell")
    }
}


extension InstaViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = mainTable.dequeueReusableCell(withIdentifier: "UsersTableViewCell", for: indexPath) as? UsersTableViewCell else { return UITableViewCell()}
        
        let value = personList[indexPath.row]
        cell.configur(user: value)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700
    }
}
