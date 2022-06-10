//
//  MoviesResponse.swift
//  Peliculas
//
//  Created by user191022 on 6/5/22.
//

import Foundation

struct PageMovieDTO: Decodable {
    let page: Int?
    let results: [MovieDTO]?
}

struct MovieDTO: Decodable {
    let id: Int?
    let overview: String?
    let poster_path: String?
    let release_date: String?
    let title: String?
    let vote_average: Double?
}
