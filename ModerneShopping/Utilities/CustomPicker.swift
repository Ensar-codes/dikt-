//
//  CustomPicker.swift
//  ModerneShopping
//
// Created by Ensar Ekici on 2023-03-29.
//

import SwiftUI

struct CustomPicker: View {
    @Binding var choosenCategory: ProductListEndpoint
    var body: some View {
        HStack(spacing:0){
            // teller hele produktkategorien
            ForEach(ProductListEndpoint.allCases, id: \.self){category in
                VStack {
                    Button(action: {
                        withAnimation(.spring()){
                            choosenCategory = category
                        }
                    }){
                        Text(category.rawValue)
                            .bold()
                            .font(.caption2)
                            .padding(8)
                            .multilineTextAlignment(.center)
                            .foregroundColor(choosenCategory == category ? .white : .accentColor)
                    }
                    .frame(height: 40)
                    .background(choosenCategory == category ? Color.accentColor : Color.secondaryBackground)
                    .cornerRadius(25)
                }
            }
        }
        .frame(height: 40)
        .background(Color.secondaryBackground)
        .cornerRadius(25)
        .shadow(color: .darkText.opacity(0.2), radius:2, x: 0.0, y: 0.0)
    }
}

struct CustomPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomPicker(choosenCategory: .constant(.all))
    }
}
