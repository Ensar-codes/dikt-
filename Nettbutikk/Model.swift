//
//  Model.swift
//  Nettbutikk
//
//  Created by Ensar Ekici on 23/04/2023.
//

import SwiftUI

//denne koden viseer produktdetalijer og egenskaper//
 
struct type : Identifiable{
     
    var id : Int
    var rows : [row]
}
 
struct row : Identifiable {
     
    var id : Int
    var name : String
    var price : String
    var image : String
    
    // produkt informasjon og egenskaper som størrelse, pris og kjole//
}

 
var sizes = ["S","M","L","XL"]
 
var types = ["Dress","Pants","Blazers","Jackets"]
 
var datas = [
     
    type(id: 0,rows: [row(id:0,name: "Trendy Sexsy", price: "$150", image: "dress1"),
                      row(id:1,name: "Floral Smock", price: "$150", image: "dress2")]),
 
    type(id: 2,rows: [row(id:0,name: "Backless Dress", price: "$136", image: "dress3"),
                      row(id:1,name: "Dresses Slimfit", price: "$199", image: "dress4")]),
]
