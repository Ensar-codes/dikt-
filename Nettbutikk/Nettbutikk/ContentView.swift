//
//  ContentView.swift
//  Nettbutikk
//
//  Created by Ensar Ekici on 19/04/2023.
//

import SwiftUI

//tekst og bilder//

struct ContentView: View {
    var body: some View {
         
        NavigationView{
            ZStack(alignment: .leading) {
                TabView{
                    MainView().tabItem {
                     
                        Image(systemName: "house").font(.title)
                    }
                      
                    Text("Discover").tabItem {
                        Image(systemName: "magnifyingglass").font(.title)
                    }
                      
                    Text("Favorites").tabItem {
                        Image(systemName: "suit.heart").font(.title)
                    }
                      
                    Text("Alert").tabItem {
                        Image(systemName: "bell").font(.title)
                    }
                }.accentColor(.red)
                .edgesIgnoringSafeArea(.top)
            }
            .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarItems(leading:
                HStack {
                    Button(action: {
                        withAnimation {
                            
                        }
                        print("Open the side menu")
                    }) {
                        Image("photo1").resizable().frame(width: 35, height: 35).clipShape(Circle())
                    }
                  
                    Text("Home").font(.title)
                }
                ,trailing:
                    HStack(spacing: 18){
                                         
                        Button(action: {
                        }) {
                           Image(systemName: "magnifyingglass")
                        }
                                         
                        Button(action: {
                        }) {
                            Image(systemName: "bell")
                        }
                                         
                        Button(action: {
                        }) {
                           Image(systemName: "cart")
                        }
                     }
            )
        }// End Navigation
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

