//
//  ShoppingListViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 24.10.2023.
//

import UIKit

class ShoppingListViewController: UIViewController {
    
    @IBOutlet weak var mainListTableView: UITableView!
    var list = [List]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.mainListTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        list = DataManager().getList()
    }
        
    @IBAction func pressAddButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "List",
                                      message: "Add goods",
                                      preferredStyle: .alert)
        
        let saveGoods = UIAlertAction(title: "Add", style: .default) { action in
            
            guard let text = alert.textFields?.first,
                  let listText = text.text else {return}
            
            DataManager().saveList(listText)
            self.list = DataManager().getList()
            
            self.mainListTableView.reloadData()
        }
        
        let cancelAlert = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addTextField()
        alert.addAction(saveGoods)
        alert.addAction(cancelAlert)
        present(alert, animated: true)
    }
    
}


extension ShoppingListViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let shoppingList = self.list[indexPath.row]
        
        let cell = mainListTableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = shoppingList.name
        cell?.selectionStyle = .none
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let valueDelete = self.list[indexPath.row]
            list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
            DataManager().deleteList(valueDelete)
        }
    }
}
