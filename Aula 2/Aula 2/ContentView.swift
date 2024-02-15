//
//  ContentView.swift
//  Aula 2
//
//  Created by Student21 on 02/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            
            ZStack{
                
                Image("bg")
                    .resizable()
                    //.scaledToFit()
                    .blur(radius: 8.0)
                
                Text("Bem vindo, Fulano")
                                            .font(.title)
            
                VStack{
                    Image("logo").resizable()
                                            .frame(width: 200,height: 100)

                    Image("truck").resizable()
                        .imageScale(.small)
                        .foregroundColor(.accentColor)
                        .frame(width: 100, height: 100)
                
                    
                    
                    VStack(alignment: .leading) {
                        
                        //            TextField("Fulano")
                        //                .font(.subheadline)
                       
                        
                    }
                }
                
            
            
        }.padding()
        
        //Alert{
        
        //}
        
        //Text Field{
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



