//
//  SecondCircleController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 18.05.2023.
//

import UIKit

class SecondCircleController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenYellowRed()

    }

    private func greenYellowRed() {
        
        let greenView = UIView(frame: CGRect(x: 100, y: 56, width: 200, height: 200))
        greenView.backgroundColor = .systemGreen
        greenView.layer.cornerRadius = 100
        view.addSubview(greenView)
        
        let yellowView = UIView(frame: CGRect(x: 100, y: 300, width: 200, height: 200))
        yellowView.backgroundColor = .systemYellow
        yellowView.layer.cornerRadius = 100
        view.addSubview(yellowView)
        
        let redView = UIView(frame: CGRect(x: 100, y: 536, width: 200, height: 200))
        redView.backgroundColor = .systemRed
        redView.layer.cornerRadius = 100
        view.addSubview(redView)
        
    }
    

}
