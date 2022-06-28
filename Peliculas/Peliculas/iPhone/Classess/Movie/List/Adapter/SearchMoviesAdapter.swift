//
//  SearchMoviesAdapter.swift
//  Peliculas
//
//  Created by user191554 on 6/27/22.
//

import UIKit

class SearchMoviesAdapter: NSObject {
    
    private unowned let controller: MoviesViewController
    
    
    var arrayData = [Movie]()
    
    init(controller: MoviesViewController) {
        self.controller = controller
        
    }
    
}

extension SearchMoviesAdapter: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //print(searchText)
        
        if searchText.count == 0 {
                    self.controller.setResultOfSearchMovies(self.arrayData)
                    
                } else {
                    
                    let result = self.arrayData.filter { movie in
                        
                        let title = movie.title.lowercased()
                        let text = searchText.lowercased()
                        
                        return title.contains(text)
                    }
                    
                    //let arrayToShow: [Any] = result.count != 0 ? result : ["No se encontraron resultado para la búsqueda de:\n\n\(searchText)"]
                    
                    self.controller.setResultOfSearchMovies(result)
                }
    }
}
