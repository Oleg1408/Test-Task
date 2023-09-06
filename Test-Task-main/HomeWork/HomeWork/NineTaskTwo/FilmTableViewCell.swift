//
//  FilmTableViewCell.swift
//  HomeWork
//
//  Created by Олег Курбатов on 06.09.2023.
//

import UIKit

class FilmTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleFilm: UILabel!
    @IBOutlet weak var overViewFilm: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    func configur(_ film: ResultsOfFilm) {
        titleFilm.text = film.originalTitle ?? ""
        overViewFilm.text = film.overview ?? ""
    }
    
    
    
}
