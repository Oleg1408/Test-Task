//
//  TableViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 05.07.2023.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet weak var mainTableViewCell: UITableView!
    
    
    let mounth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    
    let number = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let mounthList = mounth[indexPath.row]
        let numberList = number[indexPath.row]
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        if let infoTableViewController = main.instantiateViewController(withIdentifier: "InfoTableViewController") as? InfoTableViewController {
            
            infoTableViewController.mounthName = mounthList
            infoTableViewController.mounthNumber = numberList
            navigationController?.pushViewController(infoTableViewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mounth.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = mounth[indexPath.row]
        
        return cell
    }
    
    
    
    
}
