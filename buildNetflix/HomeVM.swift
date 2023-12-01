//
//  HomeVM.swift
//  buildNetflix
//
//  Created by Bakhrom Achilov on 01/12/23.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String = Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    init() {
        setupMovies()
    }
    
    public func getMovies(forCategory cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci"] = exampleMovies.shuffled()
        
    }
    
}
