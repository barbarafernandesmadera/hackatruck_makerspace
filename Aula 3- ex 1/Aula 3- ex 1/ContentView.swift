//
//  ContentView.swift
//  Aula 3- ex 1
//
//  Created by Student21 on 03/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .badge(10)
                .tabItem {
                    Label("Home",systemImage: "house.fill")
                }
            
            Color(.purple)
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            PhotoView()
                .tabItem{
                    Image(systemName: "photo.fill")
                    Text("Photos")
                }
            Text("Message view")
                .badge("!")
                .tabItem{
                    Text("Messages")
                }
            Text("Profile view")
                .tabItem{
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
            
        }
        
        
        /*VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()  */
    }
}
       

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
