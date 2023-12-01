//
//  StandardHomeMovie.swift
//  buildNetflix
//
//  Created by Bakhrom Achilov on 01/12/23.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

#Preview {
    StandardHomeMovie(movie: exampleMovie1)
}
