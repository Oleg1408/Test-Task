//
//  ThirdCircleController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 18.05.2023.
//

import UIKit

class ThirdCircleController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        alfaGreenRedYellow()

    }
    

    private func alfaGreenRedYellow() {
        
       let greenView = UIView(frame: CGRect(x: 0, y: 400, width: 200, height: 200))
       greenView.backgroundColor = .systemGreen
       greenView.layer.cornerRadius = 100
       view.addSubview(greenView)
       
       
       let redView = UIView(frame: CGRect(x: 220, y: 200, width: 200, height: 200))
       redView.backgroundColor = .systemRed
       redView.layer.cornerRadius = 100
       view.addSubview(redView)
       
       let yellowView = UIView(frame: CGRect(x: 100, y: 300, width: 200, height: 200))
       yellowView.backgroundColor = .systemYellow
       yellowView.alpha = 0.5
       yellowView.layer.cornerRadius = 100
       view.addSubview(yellowView)
        
        
        
    }
    

}
