//
//  CoursesUIView.swift
//  HomeWork
//
//  Created by Олег Курбатов on 27.05.2023.
//

import UIKit

class CoursesUIView: UIView {
    
    @IBOutlet var coursesView: UIView!
    @IBOutlet weak var coursesLable: UILabel!
    
    
    
    // settings USA
    @IBOutlet weak var dollarView: UIView!
    @IBOutlet weak var textDollarUsa: UILabel!
    @IBOutlet weak var flagUsa: UIImageView!
    @IBOutlet weak var courseUsa: UILabel!
    
    // settings EURO
    @IBOutlet weak var euroView: UIView!
    @IBOutlet weak var textEuro: UILabel!
    @IBOutlet weak var flagEuro: UIImageView!
    @IBOutlet weak var courseEuro: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        Bundle.main.loadNibNamed("CoursesUIView", owner: self, options: nil)
        coursesView.fixInView(self)
    }
    
    
    func configureCourses() {
    
        flagUsa.image = UIImage(named: "usa")
        flagEuro.image = UIImage(named: "euro")
        coursesLable.text = "Еще"
        textDollarUsa.text = "Доллар США"
        textEuro.text = "Евро"
        courseUsa.text = "36.65 / 37.25"
        courseEuro.text = "41.22 / 45.22"

    }
    
}

