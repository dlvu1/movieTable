//
//  detailView.swift
//  MovieTableSwiftUI
//
//  Created by Duyen Vu on 3/5/24.
//

import SwiftUI

struct DetailView: View {
    var movie: Movie

    var body: some View {
        VStack(spacing: 60) {
            Spacer()
            Image(movie.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                .overlay(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.4)]), startPoint: .top, endPoint: .bottom))
            
            HStack {
                VStack(alignment: .leading, spacing: 50) {
                    Text("Genre: \(movie.genre)")
                        .padding(.leading)
                        .foregroundColor(.black)
                    Text("Description: \(movie.description)")
                        .padding(.leading)
                        .foregroundColor(.black)
                }

            }
            .padding()

            Spacer()
            Spacer()
            Spacer()
        }
        .navigationBarTitle(movie.name)
        .cornerRadius(50)
        .shadow(radius: 20)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: Movie(name: "Sample Movie", genre: "Action", image: "defaultImage", description: "This is a sample movie description"))
    }
}
