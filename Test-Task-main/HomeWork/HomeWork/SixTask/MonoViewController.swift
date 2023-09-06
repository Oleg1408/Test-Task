//
//  MonoViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 27.05.2023.
//

import UIKit


class MonoViewController: UIViewController, MenuBlockDelegate {
    
    @IBOutlet weak var tabBarLable: CoursesUIView!
    
    @IBOutlet weak var centralMenuBlock: BlockUIView!
    @IBOutlet weak var leftMenuBlock: BlockUIView!
    @IBOutlet weak var rightMenuBlock: BlockUIView!
    
    @IBOutlet weak var mainTextLable: UILabel!
    @IBOutlet weak var ukrFlagImage: UIImageView!
    @IBOutlet weak var imageLeft: UIImageView!
    @IBOutlet weak var imageRight: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centralMenuBlock.delegate = self
        leftMenuBlock.delegate = self
        rightMenuBlock.delegate = self
        
        tabBarLable.configureCourses()
        greenView()
        centralMenuBlock.configure(with: "Рассрочка на карту", image: UIImage(named: "paymentIn") ?? UIImage())
        leftMenuBlock.configure(with: "Покупка частями", image: UIImage(named: "dog") ?? UIImage())
        rightMenuBlock.configure(with: "Архив", image: UIImage(named: "archive") ?? UIImage())
        
    }
    
    
    func menuElementPressed(sender: BlockUIView) {
        
        if sender === centralMenuBlock {
            print("Central Menu Block pressed")
        } else if sender === leftMenuBlock {
            print("Left Menu Block pressed")
        } else if sender === rightMenuBlock {
            print("Right Menu Block pressed")
        } else {
            print("Unknown block pressed")
        }
    }
    
    
    func greenView() {
        mainTextLable.text = "Доступный лимит"
        ukrFlagImage.image = UIImage(named: "ukraine")
    }
}
