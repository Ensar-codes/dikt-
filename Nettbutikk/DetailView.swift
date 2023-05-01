//
//  DetailView.swift
//  Nettbutikk
//
//  Created by Ensar Ekici on 27/04/2023.
//

import SwiftUI
 
struct DetailView : View {
     
    //betyr at den kan brukes som en visning i SwiftUI//
    
    @Binding var show : Bool
    @State var size = ""
     
    //styrer om denne visningen skal vises eller skjules//
    
    var body : some View{
         //visningens body//
        
        VStack(spacing : 0){
            //informasjon om detaljevisningen//
             
            HStack(spacing: 18){
                //koden for tilbakeknapp og handlekurvknapper//
                 
                Button(action: {
                     //knapp som utfører en handling når den trykkes//
                    
                    self.show.toggle()
                     
                }) {
                     
                    Image(systemName: "arrow.left")
                }
                 
                Spacer()
                 
                Button(action: {
                     
                }) {
                     
                    Image(systemName: "magnifyingglass")
                }
                 
                Button(action: {
                     
                }) {
                     
                    Image(systemName: "cart")
                }
           //symbolene til handlekurv, favoritter osv//
                
            }.navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .padding(15)
                 
             
            Image("dress4").resizable()
             
            //bilder og prisen til kjoler//
            VStack(alignment: .leading ,spacing: 15){
                 
                HStack{
                     
                    VStack(alignment: .leading, spacing: 8){
                         
                        Text("Dresses Slimfit").font(.largeTitle)
                        Text("$199.99").fontWeight(.heavy)
                    }
                     
                    Spacer()
                     
                    HStack(spacing: 10){
                         
                        Circle().fill(Color.green).frame(width: 20, height: 20)
                        Circle().fill(Color.blue).frame(width: 20, height: 20)
                        Circle().fill(Color.red).frame(width: 20, height: 20)
                    }
                }
 
                 
                Text("Fitted top made from a polyamide blend. Features wide straps and chest reinforcement.")
                 
                 
                 
                Text("Select Size")
                 
                HStack{
                     
                    ForEach(sizes,id: \.self){i in
                         
                        Button(action: {
                             
                            self.size = i
                             
                        }) {
                             
                            Text(i).padding().border(Color.black, width: self.size == i ? 1.5 : 0)
                             
                        }.foregroundColor(.black)
                    }
                }
 
                 
                HStack{
                     
                    Button(action: {
                         
                    }) {
                         
                        Text("Add To Cart").padding().border(Color.black, width: 1.4)
                         
                    }.foregroundColor(.black)
                     
                    Spacer()
                     
                    Button(action: {
                         
                    }) {
                         
                        Text("Buy Now").padding()
                         
                    }.foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(10)
                     
                }.padding([.leading,.trailing], 15)
                .padding(.top, 15)
                 
            }.padding()
            .background(rounded().fill(Color.white))
            .padding(.top, -50)
             
        }
    }
}
 
struct DetailView_Previews: PreviewProvider {
    @State static var show = false
     
    static var previews: some View {
        DetailView(show: $show)
    }
}
 
struct rounded : Shape {
     
    func path(in rect: CGRect) -> Path {
     
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
         
        return Path(path.cgPath)
    }
}
