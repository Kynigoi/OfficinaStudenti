//
//  BackButtonView.swift
//  OfficinaStudenti
//
//  Created by Mattia Ferrara on 21/11/22.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var previousPage: String = ""

    var body: some View {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack(spacing: 0) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(Color(red: 228/255, green: 71/255, blue: 28/255))
                    Text(previousPage)
                        .foregroundColor(Color(red: 228/255, green: 71/255, blue: 28/255))
                    
                }
            }
    }
    
    init(previousPage: String) {
        self.previousPage = previousPage
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView(previousPage: "Si")
    }
}
