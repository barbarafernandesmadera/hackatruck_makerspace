//
//  HomeView.swift
//  Aula 3- ex 1
//
//  Created by Student21 on 03/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
           // Color (.yellow)
            Image("bg")
            
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                                .background(.red)
                Text("Hello Hello Hello Hello , World!")
                                .background(.blue)
                Text("Hello Hello Hello Hello , World!")
                                .background(.green)
                
            }
            
        }
        //Color (.red)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
