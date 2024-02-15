//
//  ContentView.swift
//  Aula5-ex1
//
//  Created by Student21 on 07/03/23.
//

import SwiftUI

import MapKit
//
struct ContentView: View {
    let locations = [
        Localizacao( name: "Brasil", coordinate:
                        CLLocationCoordinate2D(latitude: -22.0185361, longitude: -47.9310768)),
        Localizacao(name: "EUA", coordinate:
                        CLLocationCoordinate2D(latitude: 36.777632, longitude: -100.704853)),
        Localizacao( name: "Australia", coordinate:
                        CLLocationCoordinate2D(latitude: 24.9894273, longitude: 115.2026005))
    ]
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -22.0185361,longitude: -47.9310768),
            span : MKCoordinateSpan(latitudeDelta: 40,longitudeDelta: 40))
    
    
    
    @State private var showSheet = false
    
    var body: some View {
        VStack{
            Text("World map")
                .font(.title)
                .bold()
           // Text("\(current_loc.name)")
            VStack{
                Map(coordinateRegion: $region, annotationItems: locations){
                    location in
                    MapAnnotation(coordinate: location.coordinate){
                        Circle().frame(width: 15)
                            .onTapGesture {
                                self.showSheet = true
                            }
                    }
                }.frame(height:500)
                .sheet(isPresented: $showSheet){
                        
                    }
            }
            VStack{
                Button("Brasil"){
                     region = MKCoordinateRegion(
                        center: CLLocationCoordinate2D(
                            latitude: -22.0185361,
                            longitude: -47.9310768),
                            span : MKCoordinateSpan(
                                latitudeDelta: 0.2,
                                longitudeDelta: 0.2)
                            )
                    
                }
                Button("EUA"){
                   region = MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: 24.9894273,longitude: -100.704853),
                            span : MKCoordinateSpan(
                                latitudeDelta: 0.2,
                                longitudeDelta: 0.2)
                            )
                }
                Button("Australia"){
                 region = MKCoordinateRegion(
                        center: CLLocationCoordinate2D(
                            latitude: 24.9894273, longitude: 115.2026005),
                            span : MKCoordinateSpan(latitudeDelta: 0.2,longitudeDelta: 0.2)
                        )
                        }
                    .font(.title)
                    .padding(5)
            }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
