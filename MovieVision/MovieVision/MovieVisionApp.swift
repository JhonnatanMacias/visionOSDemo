//
//  MovieVisionApp.swift
//  MovieVision
//
//  Created by Jhonnatan Macias on 17/01/24.
//

import SwiftUI

@main
struct MovieVisionApp: App {
    
    @State var moviesVM = MoviesVM()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(moviesVM)
        }
        
        WindowGroup(id: "poster") {
            if let selection = moviesVM.selection {
                MoviePoster(movie: selection)
            }
        }
        .defaultSize(CGSize(width: 150, height: 250))
    }
}
