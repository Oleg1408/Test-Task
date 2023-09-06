//
//  FotoViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 06.09.2023.
//

import UIKit
import SDWebImage

class FotoViewController: UIViewController {
        
    @IBOutlet weak var centralImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func pressButton(_ sender: Any) {
        let fotoImageString: String = "https://picsum.photos/200/300"
        let imageURL = URL(string: fotoImageString)
        centralImageView.sd_setImage(with: imageURL)
    }

    
}
