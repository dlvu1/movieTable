//
//  movieViewModel.swift
//  MovieTableSwiftUI
//
//  Created by Duyen Vu on 3/5/24.
//

import Foundation

public class movieViewModel: ObservableObject {
    @Published var MovieGroups: [MovieGroup]

    init() {
        MovieGroups = [
            MovieGroup(groupName: "A", movies: 
                        [Movie(name: "Avatar", genre: "Action", image: "avatar", description: "A great sci-fi movie")]),
            MovieGroup(groupName: "B", movies: 
                        [Movie(name: "Big Lebowski", genre: "Comedy", image: "defaultImage", description: "A classic comedy film")]),
            MovieGroup(groupName: "C", movies: []),
            MovieGroup(groupName: "D", movies: 
                        [Movie(name: "Dark Knight", genre: "Action", image: "defaultImage", description: "Batman's epic adventure")]),
            MovieGroup(groupName: "E", movies: []),
            MovieGroup(groupName: "F", movies: 
                        [Movie(name: "Forrest Gump", genre: "Drama", image: "defaultImage", description: "Life is like a box of chocolates")]),
            MovieGroup(groupName: "G", movies: []),
            MovieGroup(groupName: "H", movies: []),
            MovieGroup(groupName: "I", movies: []),
            MovieGroup(groupName: "J", movies: []),
            MovieGroup(groupName: "K", movies: []),
            MovieGroup(groupName: "L", movies: []),
            MovieGroup(groupName: "M", movies: []),
            MovieGroup(groupName: "N", movies: []),
            MovieGroup(groupName: "O", movies: []),
            MovieGroup(groupName: "P", movies: []),
            MovieGroup(groupName: "Q", movies: []),
            MovieGroup(groupName: "R", movies: []),
            MovieGroup(groupName: "S", movies: 
                        [Movie(name: "Shawshank Redemption", genre: "Drama", image: "defaultImage", description: "A tale of hope and friendship")]),
            MovieGroup(groupName: "T", movies: []),
            MovieGroup(groupName: "U", movies: []),
            MovieGroup(groupName: "V", movies: []),
            MovieGroup(groupName: "W", movies: []),
            MovieGroup(groupName: "X", movies: []),
            MovieGroup(groupName: "Y", movies: []),
            MovieGroup(groupName: "Z", movies: [])
        ]
    }
}
