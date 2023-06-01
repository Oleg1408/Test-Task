//
//  BlockUIView.swift
//  HomeWork
//
//  Created by Олег Курбатов on 31.05.2023.
//

import UIKit

class BlockUIView: UIView {

    @IBOutlet var blockView: UIView!
    @IBOutlet weak var imageBlockView: UIImageView!
    @IBOutlet weak var textBlockLable: UILabel!
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        Bundle.main.loadNibNamed("BlockUIView", owner: self, options: nil)
        blockView.fixInView(self)
    }
    
    func configure(with text: String, image: UIImage) {
        
        imageBlockView.image = image
        textBlockLable.text = text
        
    }
    

}
