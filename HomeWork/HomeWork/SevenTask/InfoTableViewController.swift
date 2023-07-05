//
//  InfoTableViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 05.07.2023.
//

import UIKit

class InfoTableViewController: UIViewController {
    
    @IBOutlet weak var nameOfMounth: UILabel!
    @IBOutlet weak var numberOfMounth: UILabel!
    
    var mounthName = ""
    var mounthNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameOfMounth.text = mounthName
        numberOfMounth.text = mounthNumber
    }
}
