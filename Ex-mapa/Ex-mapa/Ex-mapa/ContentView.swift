//
//  ContentView.swift
//  Ex-mapa
//
//  Created by Student21 on 08/03/23.
//

import SwiftUI

import MapKit
//
struct ContentView: View {
    let locations = [
        Localizacao(name: "Brasil", coordinate:
                        CLLocationCoordinate2D(latitude: -15.4648, longitude: -47.9310768),flag: "https://static.mundoeducacao.uol.com.br/mundoeducacao/conteudo_legenda/5881291177d6af418ec43c3c95e05056.jpg",description:"Brazil is South America's most influential country, a rising economic power and one of the world's biggest democracies.Over the past few years it has made major strides in its efforts to raise millions out of poverty, although the gap between rich and poor remains wide.The exploitation of the Amazon rainforest, much of which is in Brazil, has been a major international worry, since the wilderness is a vital regulator of the climate.A former Portuguese colony, Brazil has a highly diverse population, including indigenous Americans and the descendants of African slaves and European settlers."),
        Localizacao(name: "EUA", coordinate:
                        CLLocationCoordinate2D(latitude: 38.5342, longitude: -77.0210),flag: "https://s3.static.brasilescola.uol.com.br/be/conteudo/images/estados-unidos.jpg",description: "The USA is the world's foremost economic and military power, with global interests and an unmatched global reach.America's gross domestic product accounts for close to a quarter of the world total, and its military budget is reckoned to be almost as much as the rest of the world's defence spending put together.The country is also a major source of entertainment: American TV, Hollywood films, jazz, blues, rock and rap music are primary ingredients in global popular culture.The United States originated in a revolution that separated it from the British Crown. The constitution, drafted in 1787, established a federal system with a division of powers that has remained little changed since its inception."),
        Localizacao( name: "Australia", coordinate:
                        CLLocationCoordinate2D(latitude: -25.0289668, longitude: 115.1976068),flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/2880px-Flag_of_Australia_%28converted%29.svg.png",description: "Australia ranks as one of the best countries to live in the world by international comparisons of wealth, education, health and quality of life. The sixth-largest country by land mass, its population is comparatively small with most people living around the eastern and south-eastern coastlines.The country's first inhabitants, the Aboriginal people, are believed to have migrated from Asia tens of thousands of years before the arrival of British settlers in 1788. They now make up less than 3% of Australia's 23 million people.Years of mass immigration after the Second World War heralded sweeping demographic changes, making modern Australia one of the world's most multicultural countries. But migration continues to be a sensitive issue politically.In shaping its foreign and economic policy, Australia first looked to Europe and the US but in the last 20 years has developed stronger ties with Asia. It has acted as peacekeeper in the region sending missions to Solomon Islands, East Timor and Papua New Guinea.Although Australia remains part of the Commonwealth, the future role of the monarchy has been a recurring issue in politics. An ageing population, pressure on infrastructure, and environmental concerns such as climate change are some of the long-term challenges facing the country.")
    ]
    
    @State var current_loc =
        Localizacao(name: "Brasil", coordinate:
                        CLLocationCoordinate2D(latitude: -15.4648, longitude: -47.9310768),flag: "https://static.mundoeducacao.uol.com.br/mundoeducacao/conteudo_legenda/5881291177d6af418ec43c3c95e05056.jpg",description: "Brazil is South America's most influential country, a rising economic power and one of the world's biggest democracies.Over the past few years it has made major strides in its efforts to raise millions out of poverty, although the gap between rich and poor remains wide.The exploitation of the Amazon rainforest, much of which is in Brazil, has been a major international worry, since the wilderness is a vital regulator of the climate.A former Portuguese colony, Brazil has a highly diverse population, including indigenous Americans and the descendants of African slaves and European settlers. ")
        
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -15.7801,longitude: -47.9292),
        span : MKCoordinateSpan(latitudeDelta: 50,longitudeDelta: 50))
    
    
    
    @State private var showSheet = false
    
    var body: some View {
        VStack{
            Text("World map")
                .font(.title)
                .bold()
            VStack{
                Map(coordinateRegion: $region, annotationItems: locations){
                    location in
                    MapAnnotation(coordinate: location.coordinate){
                        Circle().frame(width: 15)
                            .onTapGesture {
                                self.showSheet = true
                            }
                    }
                }.frame(height: 500)
                    .sheet(isPresented: $showSheet){
                        VStack{
                            Text("\(current_loc.name)")
                                .font(.title)
                                .bold()
                                .padding(.top,10)
                                .padding(.bottom,20)
                            
                            AsyncImage(url:URL(string:current_loc.flag)){
                                image in image
                                    .resizable()
                                    .scaledToFit()
                            }placeholder: { ProgressView()}
                                .padding(.bottom,20)
                            ScrollView{
                                Text("\(current_loc.description)")
                            }
                        }
                    }
            }
            
                ScrollView(){
                        VStack(){
                            ForEach(locations) { location in
                                Button("\(location.name)"){
                                    current_loc = location
                                    region.center = location.coordinate
                                        }
                                    .buttonStyle(.borderedProminent)
                                        Spacer()
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
    
    
