//
//  DetailsScroll.swift
//  Nettbutikk
//
//  Created by Ensar Ekici on 27/04/2023.
//

import SwiftUI

//kodene her viser forskjellige produkter//
 
struct DetailsScroll : View {
     
    @State var show = false
     
    var body : some View{
         
        ScrollView(.vertical, showsIndicators: false) {
             
            VStack(spacing: 12){
                 
                ForEach(datas){i in
                     
                    HStack{
                         
                        ForEach(i.rows){j in
                             
                            Cards(row: j)
                        }
                    }
                }
            }
        }
    }
}
 
struct DetailsScroll_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScroll()
    }
}

