//
//  SongModels.swift
//  Aula4-ex1
//
//  Created by Student21 on 06/03/23.
//

import Foundation
struct Song : Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct Suggestion : Identifiable {
    var id: String
    var albumConver: String
    var albumName: String
}
