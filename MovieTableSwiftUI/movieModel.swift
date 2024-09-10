//
//  movieModel.swift
//  MovieTableSwiftUI
//
//  Created by Duyen Vu on 3/5/24.
//

import Foundation

struct Movie: Identifiable{
    var id = UUID()
    var name = String()
    var genre = String()
    var image = String()
    var description = String()
    
}

struct MovieGroup: Identifiable {
    var id = UUID()
    var groupName : String
    var movies : [Movie]
}

