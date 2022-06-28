//
//  ListMoviesAdapter.swift
//  Peliculas
//
//  Created by user191554 on 6/27/22.
//

import UIKit

class ListMoviesAdapter: NSObject {
    
    private unowned let controller: MoviesViewController
    var arrayData = [Movie]()
    
    init(controller: MoviesViewController) {
        self.controller = controller
        
    }
    
}

extension ListMoviesAdapter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return MovieTableViewCell.buildIn(tableView, indexPath: indexPath, movie: self.arrayData[indexPath.row])
        
    }
}

extension ListMoviesAdapter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let objMovie = self.arrayData[indexPath.row]
        self.controller.openDetailMovie(objMovie)        //print("Seleccionaron pelicula:\(objMovie.title)")
    }
}
