//
//  FilmViewController.swift
//  HomeWork
//
//  Created by Олег Курбатов on 06.09.2023.
//

import UIKit
import Alamofire

class FilmViewController: UIViewController {
    
    @IBOutlet weak var tableViewFilm: UITableView!
    
    var filmArray: [ResultsOfFilm] = []
    
    var currentPage = 1
    let itemsPerPage = 20
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainRegisterCell()
        loadData()
    }
    
    func loadNextPage() {
           currentPage += 1
           loadData()
       }
    
    
    func loadData() {
        
        let url =  "https://api.themoviedb.org/3/movie/top_rated?api_key=f28226d77e6c2b87d7d08bc99737fd1a&language=en-US&page=1"
        
        AF.request(url, method: .get, parameters: nil).responseDecodable(of: FilmData.self) { response in
            do { let decoder = JSONDecoder()
                if let responseFilm = response.data {
                    if let dataValue = try? decoder.decode(FilmData.self, from: responseFilm) {
                        self.filmArray = dataValue.results ?? []
                        self.tableViewFilm.reloadData()
                    }
                }
            }
        }
    }
}


    

extension FilmViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableViewFilm.dequeueReusableCell(withIdentifier: "FilmTableViewCell", for: indexPath) as? FilmTableViewCell else { return UITableViewCell() }
    
        let film = filmArray[indexPath.row]
        cell.configur(film)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == filmArray.count - 1 {
            loadNextPage()
        }
    }
}


extension FilmViewController {
    
    func mainRegisterCell() {
        
        tableViewFilm.register(UINib(nibName: "\(FilmTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "\(FilmTableViewCell.self)")
    }
    
}
