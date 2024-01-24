//
//  ContentView.swift
//  MovieVision
//
//  Created by Jhonnatan Macias on 17/01/24.
//

import SwiftUI
import RealityKit
//import RealityKitConten

struct ContentView: View {
    
    @Environment(MoviesVM.self) private var moviesVM
    
    var body: some View {
        NavigationSplitView {
            @Bindable var bvm = moviesVM
            
            List(selection: $bvm.selection) {
                ForEach(moviesVM.movie) { movie in
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle("Movies")
        } detail: {
            if let selection = moviesVM.selection {
                MovieDetail(movie: selection)
            } else {
                ContentUnavailableView("Elige una película", systemImage: "popcorn",
                description: Text("Por favor, seleccione una película en la barra lateral"))
            }
            
            
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(MoviesVM(interactor: DataInteractorTest()))
}




//
//TabView {
//    NavigationSplitView {
//        List {
//            Text("Hello, world!")
//                .padding()
//                .glassBackgroundEffect(in: RoundedRectangle(cornerRadius: 10))
//        }
//        .navigationTitle("Sidebar")
//    } detail: {
//        VStack {
//            Button("Detalle") {
//
//            }
//        }
//        .navigationTitle("Content")
//        .padding()
//    }// NavSplit
//    .tabItem {
//        Label("Favorito", systemImage: "star")
//    }
//    Text("Perfil")
//        .tabItem {
//            Label("Persona", systemImage: "person")
//        }
//}
