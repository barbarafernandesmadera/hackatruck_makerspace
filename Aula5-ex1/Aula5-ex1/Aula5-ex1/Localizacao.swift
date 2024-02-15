//
//  Localizacao.swift
//  Aula5-ex1
//
//  Created by Student21 on 07/03/23.
//

import Foundation
import CoreLocation

struct Localizacao : Identifiable{
    let id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
   // let flag: String
    //let description: String
}


