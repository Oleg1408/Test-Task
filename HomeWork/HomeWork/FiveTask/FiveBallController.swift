//
//  FiveBallController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 18.05.2023.
//

import UIKit

class FiveBallController: UIViewController {
    
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var constraintRedView: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsRedView()
        settingsPressButton()
        
    }
    
    
    private func settingsPressButton() {
        settingsButton.setTitle("Bounce!", for: .normal)
    }
    
    private func settingsRedView() {
        redView.layer.cornerRadius = 75
    }
    
    
    
    @IBAction func pressButton(_ sender: Any) {
        UIView.animate(withDuration: 1,
                       delay: 0,
                       usingSpringWithDamping: 2,
                       initialSpringVelocity: 1,
                       options: [.repeat, .autoreverse]) {
            self.constraintRedView.constant = 350
            self.view.layoutIfNeeded()
        }
    }
    
    
}
