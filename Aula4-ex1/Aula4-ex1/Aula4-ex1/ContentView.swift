//
//  ContentView.swift
//  Aula4-ex1
//
//  Created by Student21 on 06/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var arr = [
        Song(id:1,name:"Dirt off Your Shoulder/Lying From You",artist:"Linkin Park",capa:"https://upload.wikimedia.org/wikipedia/en/2/2f/Collision_Course_CD-DVD_cover.jpg"),
        Song(id:2,name: "Numb/Encore",artist:"Linkin Park",capa:"https://upload.wikimedia.org/wikipedia/en/2/2f/Collision_Course_CD-DVD_cover.jpg"),
        Song(id:3,name: "Izzo/In the End",artist:"Linkin Park",capa: "https://upload.wikimedia.org/wikipedia/en/2/2f/Collision_Course_CD-DVD_cover.jpg"),
        Song(id:4,name: "Big Pimpin'/Papercut",artist:"Linkin Park",capa: "https://upload.wikimedia.org/wikipedia/en/2/2f/Collision_Course_CD-DVD_cover.jpg"),
        Song(id:5,name:"Points of Authority/99 Problems",artist:"Linkin Park",capa:"https://upload.wikimedia.org/wikipedia/en/2/2f/Collision_Course_CD-DVD_cover.jpg"),
    ]
    
    @State var arrSuggestions = [
        Song(id: 1, name: "What I've Done", artist: "Linkin Park", capa: "https://upload.wikimedia.org/wikipedia/pt/d/d3/Linkin_Park_Minutes_to_Midnight.jpg"),
        Song(id: 2, name: "No More Sorrow", artist: "Linkin Park", capa: "https://upload.wikimedia.org/wikipedia/pt/d/d3/Linkin_Park_Minutes_to_Midnight.jpg"),
        Song(id: 3, name: "Minutes to Midnight", artist: "Linkin Park", capa: "https://upload.wikimedia.org/wikipedia/pt/d/d3/Linkin_Park_Minutes_to_Midnight.jpg")
        
    ]
    
    
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                
                Rectangle().fill(.black)
                    .ignoresSafeArea()
                LinearGradient(gradient: Gradient(colors: [.blue, .clear, .clear]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    
                    AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/2/2f/Collision_Course_CD-DVD_cover.jpg"), content: { image in
                        image
                            .resizable()
                            .frame(width: 300, height: 300)
                        
                    },
                               placeholder: {
                        ProgressView()
                    })
                    HStack{
                        Text("HackaFM")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Text("HackaSong")
                        .foregroundColor(.white)
                    AsyncImage(url: URL(string: "https://example.com/icon.png"))
                        .frame(width: 50, height: 50)
                    
                    Text("Músicas curtidas")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    ScrollView{
                        
                            ForEach(arr) { song in
                                NavigationLink(destination: SegundaPagina(mus: song)){
                                    HStack(){
                                        AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/2/2f/Collision_Course_CD-DVD_cover.jpg"),
                                                   content: { image in
                                            image
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                            
                                        },
                                                   placeholder: {
                                            ProgressView()
                                        })
                                        
                                        
                                        VStack{
                                            Text(song.name)
                                                .foregroundColor(.white)
                                            Text(song.artist)
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                        Spacer()
                                    }
                                }
                            }
                            
                            Text("Sugestões")
                                .font(.title)
                                .foregroundColor(.white)
                            
                            ScrollView(.horizontal){
                                
                                HStack{
                                   
                                        ForEach(arrSuggestions) { song in
                                            NavigationLink(destination: SegundaPagina(mus: song)){
                                            AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/91esTaFkpPL._AC_SL1500_.jpg"),
                                                       content: { image in
                                                image
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                                
                                            },
                                                       placeholder: {
                                                ProgressView()
                                            })
                                            
                                            VStack{
                                                Text(song.name)
                                                    .foregroundColor(.white)
                                                Text(song.artist)
                                                    .foregroundColor(.white)
                                                Spacer()
                                            }
                                            Spacer()
                                        }
                                    }
                                    
                                }
                                
                            }
                            
                        }
                    }
                }
            }
            

            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
