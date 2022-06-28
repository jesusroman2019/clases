//
//  MoviesViewController.swift
//  Peliculas
//
//  Created by user191022 on 6/9/22.
//

import UIKit

class MoviesViewController: UIViewController {
    
    @IBOutlet private weak var tlvMovies: UITableView!
    @IBOutlet private weak var srcMovies: UISearchBar!
    
    lazy var listAdapter = ListMoviesAdapter(controller: self)
    lazy var searchAdapter = SearchMoviesAdapter(controller: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupAdapters()
        self.getAllMovies()
    }
    
    private func getAllMovies() {
        let ws = MovieWS()
        ws.getAllMovies { arrayMoviesDTO in
            
            let arrayData = arrayMoviesDTO.toMovies
            self.listAdapter.arrayData = arrayData
            self.searchAdapter.arrayData = arrayData
            self.tlvMovies.reloadData()
        }
    }
    
    private func setupAdapters() {
        self.tlvMovies.dataSource = self.listAdapter
        self.tlvMovies.delegate = self.listAdapter
        self.srcMovies.delegate = self.searchAdapter
    }
    
    func setResultOfSearchMovies(_ arrayData: [Movie]) {
        self.listAdapter.arrayData = arrayData
        self.tlvMovies.reloadData()
        
    }
    
    
    
    func openDetailMovie(_ movie: Movie) {
        print("abrir el detalle de la pelicula:\(movie.title)")
        
    }
    
}



