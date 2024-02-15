//
//  ContentView.swift
//  IMC-code
//
//  Created by Student21 on 03/03/23.
//


import SwiftUI

struct ContentView: View {
    
    @State   var peso: Double = 0.0
    @State   var altura: Double = 0.0
    @State   var imc : Double = 0.0
    @State var cor : String = ".gray"
    
    var body: some View {
        
        ZStack{
            Color("\(cor)").ignoresSafeArea()
            
            .padding
        }
        
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
