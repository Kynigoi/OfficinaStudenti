//
//  ShopCategoryView.swift
//  OfficinaStudenti
//
//  Created by Mattia Ferrara on 20/11/22.
//

import SwiftUI

struct ShopCategoryView: View {
    
    var category: String
    var image: String
    
    var body: some View {
         ZStack {
            Text(category)
                .font(.title)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(.trailing, 150)
                .padding(.bottom, 140)
                .scaledToFill()
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top, 20)
        }
        .frame(width: 320, height: 170)
        .background(Color("CardBackground"))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 0))
        .padding(.top, 20)
    }
}

struct ShopCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ShopCategoryView(category: "Notes", image: "Notes")
    }
}
