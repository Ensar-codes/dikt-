//
//  CartViewModel.swift
//  ModerneShopping
//
//  Created by Ensar Ekici on 2023-03-29.
//

import SwiftUI

class  CartViewModel: ObservableObject {
    @Published var cartProduct: [Product] = []
    @Published var cartProductDic: [Product: Int] = [:]
    @Published var totalPrice: Double = 0
    @Published var showShowcaseSheet: Bool = false
    
    /// legger til et produkt med antallet i handlekurven vår
    /// - Parameters:
    ///   - addedProduct: product we want to add
    ///   - quantity: quantity of product we want to add
    func addToCart(addedProduct: Product, quantity: Int){
        let products = cartProductDic.map({$0.key})
        // hvis vi ikke har noe produkt, lager vi det bare med vårt kvantum og forlater funksjonen
        if products.isEmpty {
            withAnimation{
                cartProductDic[addedProduct] = quantity
            }
            return
        }
        for product in products {
            // hvis vi allerede har produktet, sjekker vi produktet vårt og legger til antallet
            if addedProduct.id == product.id {
                withAnimation{
                    cartProductDic[product]! += quantity
                }
            } else {
                // hvis vi har produkter, men ikke har denne, lager vi den med kvaliteten
                if !products.contains(where: {$0.id == addedProduct.id}){
                    withAnimation{
                        cartProductDic[addedProduct] = quantity
                    }
                }
            }
        }
    }
    func changeQuantity(product: Product,quantity: Int){
        cartProductDic[product] = quantity
    }
    
    func calculateTotalPrice(){
        var totalprice: Double = 0
        for (product,quantity) in cartProductDic {
            totalprice += product.price * Double(quantity)
        }
        withAnimation{
            totalPrice = totalprice
        }
    }
    func removeFromCart(toRemove: Product){
        cartProductDic.removeValue(forKey: toRemove)
    }
}
