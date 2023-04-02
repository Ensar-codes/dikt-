//
//  MainView.swift
//  Nettbutikk//
//  Created by Ensar Ekici on 2023-03-29.
import SwiftUI

struct MainView: View {
    @StateObject var products = ProductsListObject()
    @StateObject var cartItems = CartViewModel()
    @StateObject var user = UserViewModel()
    var body: some View {
        TabView{
           
            //kodene her er for å teste canvasen til Xcode// 
    
            HomeView(productsList: products, user: user).environmentObject(cartItems)
                .tabItem {
                    Image(systemName:"house")
                    Text("Home")
                    
                }
            CartView(cartProducts: cartItems)
                .environmentObject(user)
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            ProfilView()
                .environmentObject(user)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
        }
        .zIndex(10)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
