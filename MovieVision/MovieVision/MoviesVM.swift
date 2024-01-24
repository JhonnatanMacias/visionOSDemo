//
//  MovieVM.swift
//  MovieVision
//
//  Created by Jhonnatan Macias on 18/01/24.
//

import Foundation

@Observable
final class MoviesVM {
    
    let interactor: Interactor
    var movie: [Movie]
    var selection: Movie?
    
    init(interactor: Interactor = DataInteractor()) {
        self.interactor = interactor
        do {
            self.movie = try interactor.loadMovie()
        } catch {
            self.movie = []
        }
    }
}
