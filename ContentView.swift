//
//  ContentView.swift
//  Tela_inicial
//
//  Created by Student21 on 27/03/23.
//


import SwiftUI

struct ContentView: View {
    @State private var codigo: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle().fill(.purple)
                    .ignoresSafeArea()
                LinearGradient(gradient: Gradient(colors: [.black, .clear, .clear]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack {
                    //     Text("Apollo").foregroundColor(Color.white)
                    Spacer()
                    Image(systemName: "ellipsis").foregroundColor(Color.white).rotationEffect(.degrees(-90)).frame(minWidth: 0, maxWidth: .infinity, alignment: .topTrailing).font(.system(size: 30))
                    Button(action: {print("button pressed")}) {
                        Image("CriarSala-removebg-preview(2)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200, alignment: .topLeading)
                    }
                    Spacer()
                    Spacer()
                    //TextField("", text: $text)
                        //.placeholder(when: text.isEmpty) {
                          //  Text("Placeholder recreated").foregroundColor(.gray)
                    //}
                    
                    
                    HStack{
                        Image(systemName: "magnifyingglass").foregroundColor(Color.white)
                        
                        TextField("Digite o código da sala",text: $codigo).foregroundColor(.white).padding(.horizontal, 1.0)
                            .fixedSize(horizontal: true, vertical: true).underline(true, color: .white).padding()
                        
//                            .foregroundColor(.white)
                            
                    }
                    Button(action: {}) {
                        Text("Entrar").foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .background(Color.purple)
                            .overlay(RoundedRectangle(cornerRadius: 3000.0).stroke(Color.white)
                                .frame(width: 100, height: 50))
                            .font(.custom("Avenir Book", size:30))
                    }
                    Spacer()
                    Spacer()
                    
                    HStack{
                        Image(systemName: "play.circle").frame(width: 30,height: 30)
                            .foregroundColor(.white)
                            .font(.system(size: 60))
                        Text(" ")
                        Image(systemName: "list.dash").foregroundColor(.white)
                            .font(.system(size: 60))
                    }.frame(width: 60, height: 60,alignment: .center).padding()
                    
                }
                            
                            }
                    
                    
                }
          
                    }
                //.ignoresSafeArea()

        }
        
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
