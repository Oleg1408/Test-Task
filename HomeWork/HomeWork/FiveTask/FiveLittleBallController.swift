//
//  FiveLittleBallController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 18.05.2023.
//

import UIKit

class FiveLittleBallController: UIViewController {
    
    
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var settingsButton: UIButton!
    
    @IBOutlet weak var rightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsOrangeView()
        settingsCentralButton()
        
    }
    
    private func settingsOrangeView() {
        settingsView.layer.cornerRadius = 50
    }
    
    private func settingsCentralButton() {
        settingsButton.setTitle("Run!", for: .normal)
    }
    
    
    @IBAction func pressButton(_ sender: Any) {
    
        UIView.animate(withDuration: 0, delay: 0, options: []) {
            self.rightConstraint.constant = 16
            self.view.layoutIfNeeded()
        } completion: { completed in
            UIView.animate(withDuration: 2, delay: 0, options: []) {
                self.settingsView.frame.origin.x = 16
                self.view.layoutIfNeeded()
            } completion: { completed in
                UIView.animate(withDuration: 2, delay: 0, options: []) {
                    self.settingsView.frame.origin.y = 16
                    self.view.layoutIfNeeded()
                } completion: { completed in
                    UIView.animate(withDuration: 2, delay: 0, options: []) {
                        self.settingsView.frame.origin.x = 300
                        self.view.layoutIfNeeded()
                    } completion: { completed in
                        UIView.animateKeyframes(withDuration: 2, delay: 0, options: []) {
                            self.settingsView.frame.origin.y = 700
                            self.view.layoutIfNeeded()
                        } completion: { _ in
                            self.settingsView.isHidden = true
                        }
                    }
                }
            }
        }
    }
}



