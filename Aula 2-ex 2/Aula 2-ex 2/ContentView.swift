//
//  ContentView.swift
//  Aula 2-ex 2
//
//  Created by Student21 on 02/03/23.
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
            VStack {
                Text("Calculadora de IMC").font(.title)
                TextField("Peso: ", value: $peso, format: .number)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(TextAlignment.center)
                    .fixedSize()
                
                TextField("Altura: ", value : $altura, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(TextAlignment.center)
                    .fixedSize()
                
                Button("Calcular"){
                    
                    imc = (peso) / pow(altura,2)
                    
                    if imc < 18.5 {
                        cor = "abaixo"
                        //#83C635
                    }else if( imc <= 24.99){
                        cor = "normal"
                        //#c0d90b
                    }else if (imc <= 29.99){
                        cor = "sobre"
                        //#fca500
                    }else{
                        cor = "obesidade"
                        //#f67600
                    }
                    
                }.buttonStyle(.borderedProminent)
                
                Spacer()
                
                Text("\(String())")
                    .font(.largeTitle)
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 700, height: 200)
                    .shadow(radius: 5)
                
            }
            .padding
        }
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
