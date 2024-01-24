//
//  MoviePoster.swift
//  MovieVision
//
//  Created by Jhonnatan Macias on 22/01/24.
//

import SwiftUI

struct MoviePoster: View {
    let movie: Movie
    var body: some View {
        AsyncImage(url: movie.poster) { image in
            image
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } placeholder: {
            Image(systemName: "popcorn")
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width: 150, height: 250)
                .glassBackgroundEffect(in: RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    MoviePoster(movie: .test)
}
