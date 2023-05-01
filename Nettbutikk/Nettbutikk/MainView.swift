//
//  MainView.swift
//  Nettbutikk
//
//  Created by Ensar Ekici on 19/04/2023.
//

import SwiftUI
 
struct MainView : View {
     
    @State var selected = "Dress"
    @State private var selection = 1
    //lagrer navnet på kategorien som er valgt, mens selection lagrer valgt element i en Picker-view//
    
    var body : some View{
         
        VStack(alignment: .leading,spacing: 12){
            HStack{
                
            //viser kategorien og en som viser elementene i kategorien//
                 
                HStack{
                     
                     
                    Button(action: {
                         
                    }) {
                         
                        HStack{
                             
                            Picker(selection: $selection, label: Text("Category")) {
                                 Text("Casual Dress").tag(1)
                                 Text("Pants").tag(2)
                            }.foregroundColor(.black)
                            .background(Color.white)
                            .font(.title)
                             
                            Spacer()
                             
                            Image(systemName: "arrow.down.circle")
                             
                        }.padding()
                         
                    }.foregroundColor(.black)
                    .background(Color.white)
                     
                     
                    Button(action: {
                         
                         
                    }) {
                         
                        Image(systemName: "slider.vertical.3")
                         
                    }.background(Color.white)
                }
            }
             
            HStack{
                 
                ForEach(types,id: \.self){ i in
                     
                    HStack{
                         
                        Button(action: {
                             
                            self.selected = i
                             
                        }) {
                             
                            Text(i).padding()
                        }
                        .foregroundColor(self.selected == i ? .white : .black)
                        .background(self.selected == i ? Color.black : Color.clear)
                        .cornerRadius(10)
                         
                        Spacer(minLength: 0)
                         
                    }
                }
            }
             
            
        //Hele MainView er pakket inn i en padding og en bakgrunnsfarge, og animasjonen brukes for å legge til en animert effekt når MainView vises på skjermen/
            DetailsScroll()
             
        }.padding()
        .background(Color("Color"))
        .animation(.spring())
         
    }
}
 
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

