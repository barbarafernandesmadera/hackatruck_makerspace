//
//  SegundaPagina.swift
//  Aula4-ex1
//
//  Created by Student21 on 06/03/23.
//

import SwiftUI

struct SegundaPagina: View {
    
    var mus : Song
    
    var body: some View {
        ZStack {
            Rectangle().fill(.black)
                .ignoresSafeArea()
            LinearGradient(gradient: Gradient(colors: [.blue, .clear, .clear]), startPoint: .top, endPoint: .bottom)
            VStack{
                
                
                AsyncImage(url: URL(string: mus.capa),
                           content: { image in
                    image
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                },
                           placeholder: {
                        ProgressView()
                })
                
                
                Text(mus.name).font(.largeTitle).foregroundColor(.white)
                Text(mus.artist).foregroundColor(.white)
                HStack{
                    Image(systemName: "shuffle")
                        .foregroundColor(.white)
                    Image(systemName: "backward.end.fill")
                        .foregroundColor(.white)
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                    Image(systemName: "forward.end.fill")
                        .foregroundColor(.white)
                    Image(systemName: "repeat")
                        .foregroundColor(.white)
                }
                
                
            }
            
        }
    }
}

struct SegundaPagina_Previews: PreviewProvider {
    static var previews: some View {
        
        var musicaTeste =
            Song(id:1,name:"Dirt off Your Shoulder/Lying From You",artist:"Linkin Park",capa:"https://upload.wikimedia.org/wikipedia/en/2/2f/Collision_Course_CD-DVD_cover.jpg")
        SegundaPagina(mus: musicaTeste)
    }
}
