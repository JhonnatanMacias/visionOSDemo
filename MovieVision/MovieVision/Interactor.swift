//
//  Interactor.swift
//  MovieVision
//
//  Created by Jhonnatan Macias on 18/01/24.
//

import Foundation

protocol Interactor {
    func loadMovie() throws -> [Movie]
}

struct DataInteractor: Interactor {
    
    func loadMovie() throws -> [Movie] {
        guard let url = Bundle.main.url(forResource: "MoviesDB", withExtension: "json") else {
            return []
        }
        
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Movie].self, from: data)
    }
    
    
}
