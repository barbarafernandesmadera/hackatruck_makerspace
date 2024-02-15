//
//  Localizacao.swift
//  Ex-mapa
//
//  Created by Student21 on 08/03/23.
//

import SwiftUI

import Foundation
import CoreLocation

struct Localizacao : Identifiable{
    let id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
    let flag: String
    let description: String
}
