//
//  MoviesViewController.swift
//  Peliculas
//
//  Created by user191022 on 6/9/22.
//

import UIKit

class MoviesViewController: UIViewController {
    
    @IBOutlet private weak var tlvMovies: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tlvMovies.dataSource = self
    }
}

extension MoviesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pepito", for: indexPath)
        return cell
    }
}
