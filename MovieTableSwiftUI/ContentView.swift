//
//  ContentView.swift
//  MovieTableSwiftUI
//
//  Created by Duyen Vu on 3/5/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var movieVM = movieViewModel()
    @State private var insertView = false
    @State private var movieName = ""
    @State private var movieGenre = ""
    @State private var movieDescription = ""
    @State private var movieType = ""

    var body: some View {
        NavigationView {
            MovieListView(movieVM: movieVM, insertView: $insertView, movieName: $movieName, movieGenre: $movieGenre, movieDescription: $movieDescription, movieType: $movieType)
        }
    }
}

struct MovieListView: View {
    @ObservedObject var movieVM: movieViewModel
    @Binding var insertView: Bool
    @Binding var movieName: String
    @Binding var movieGenre: String
    @Binding var movieDescription: String
    @Binding var movieType: String

    var body: some View {
        List {
            ForEach(movieVM.MovieGroups) { movieGroup in
                Section(header: Text(movieGroup.groupName)) {
                    ForEach(movieGroup.movies) { movie in
                        NavigationLink(destination: DetailView(movie: movie)) {
                            HStack {
                                Image(movie.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                                VStack(alignment: .leading) {
                                    Text(movie.name)
                                        .font(.headline)
                                    Text(movie.genre)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                    }.onDelete(perform: { indexSet in
                        let index = groupNametoNum(gName: movieGroup.groupName)
                        if index != -1 {
                            movieVM.MovieGroups[index].movies.remove(atOffsets: indexSet)
                        }
                    })
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("List Movie You've Watched")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    insertView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .alert("Insert", isPresented: $insertView, actions: {
            VStack {
                TextField("Movie Name", text: $movieName)
                TextField("Genre", text: $movieGenre)
                TextField("Description", text: $movieDescription)
                TextField("Category (A, B, ... Z):", text: $movieType)
            }
            Button("Insert", action: {
                let index = groupNametoNum(gName: movieType)
                let movie = Movie(name: movieName, genre: movieGenre, image: "defaultImage", description: movieDescription)
                movieVM.MovieGroups[index].movies.append(movie)
                insertView = false
            })
            Button("Cancel", role: .cancel, action: {
                insertView = false
            })
        }, message: {
            Text("Please Enter Movie Details to Insert")
        })
    }
    
    func groupNametoNum(gName:String)-> Int
    {
        var rVal:Int = -1
        switch gName
        {
        case "A":
            rVal = 0
        case "B":
            rVal = 1
        case "C":
            rVal = 2
        case "D":
            rVal = 3
        case "E":
            rVal = 4
        case "F":
            rVal = 5
        case "G":
            rVal = 6
        case "H":
            rVal = 7
        case "P":
            rVal = 16
        case "Q":
            rVal = 17
        case "I":
            rVal = 10
        case "J":
            rVal = 11
        case "K":
            rVal = 12
        case "L":
            rVal = 13
        case "M":
            rVal = 14
        case "N":
            rVal = 15
        case "O":
            rVal = 16
        case "R":
            rVal = 18
        case "S":
            rVal = 19
        case "T":
            rVal = 20
        case "U":
            rVal = 21
        case "V":
            rVal = 22
        case "W":
            rVal = 23
        case "X":
            rVal = 24
        case "Y":
            rVal = 25
        case "Z":
            rVal = 26
        default:
            rVal = -1
        }
        return rVal
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
