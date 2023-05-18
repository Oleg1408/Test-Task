//
//  MainCircleController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 18.05.2023.
//



/*
 1. Создайте проект включающий 4 экрана. Стартовый контроллер в storyboard должен быть
 UITabBarViewController, он имеет связи со всеми UIViewController. Реализуйте 4 экрана описанные на следующих скринах, используя только код:
 
 */


import UIKit

class MainCircleController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenView()

    }
    
    
    func greenView() {
        
        let greenView = UIView(frame: CGRect(x: 50, y: 260, width: 300, height: 300))
        greenView.backgroundColor = .systemGreen
        greenView.layer.cornerRadius = 150
        view.addSubview(greenView)

    }


}
