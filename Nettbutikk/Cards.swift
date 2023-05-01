//
//  Cards.swift
//  Nettbutikk
//
//  Created by Ensar Ekici on 21/04/2023.
//

import SwiftUI
 
struct Cards : View {
     
    var row : row
    @State var show  = false
     
     
    var body : some View{
         
        VStack(spacing: 8){
            
            //detalijer av produkt og bilder//
             
            NavigationLink(destination: DetailView(show: $show), isActive: $show) {
                 
                Image(row.image).renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 240)
            }
             
            
             
            HStack{
                 
                VStack(alignment: .leading, spacing: 10){
                     
                    Text(row.name)
                    Text(row.price).fontWeight(.heavy)
                     
                }
                 
                Spacer()
                 
                Button(action: {
                     
                }) {
                     
                    Image(systemName: "text.redaction")
                     
                }.padding(.trailing, 15)
            }
        }
    }
}
 
struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards(row: row(id: 1, name: "Test", price: "$150", image: "details"))
    }
}
