//
//  FourthCircleController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 18.05.2023.
//

import UIKit

class FourthCircleController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boundsGreenYellowRedBlue()
        
    }
    
    
    func boundsGreenYellowRedBlue() {
        
        
        let newView = UIView(frame: CGRect(x: 0, y: 200, width: 390, height: 390))
        newView.backgroundColor = .white
        newView.layer.cornerRadius = 195
        newView.clipsToBounds = true
        view.addSubview(newView)
        
        let redView = UIView(frame: CGRect(x: -30, y: -20, width: 250, height: 250))
        redView.backgroundColor = .systemRed
        redView.layer.cornerRadius = 125
        newView.addSubview(redView)
        
        let yellowView = UIView(frame: CGRect(x: 180, y: -50, width: 250, height: 250))
        yellowView.backgroundColor = .systemYellow
        yellowView.layer.cornerRadius = 125
        newView.addSubview(yellowView)
        
        let greenView = UIView(frame: CGRect(x: 160, y: 160, width: 250, height: 250))
        greenView.backgroundColor = .systemGreen
        greenView.layer.cornerRadius = 125
        newView.addSubview(greenView)
        
        let blueView = UIView(frame: CGRect(x: 10, y: 165, width: 250 , height: 250))
        blueView.backgroundColor = .systemBlue
        blueView.layer.cornerRadius = 125
        newView.addSubview(blueView)
        
        
    }
    
}
