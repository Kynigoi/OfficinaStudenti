//
//  NotesSingleItem.swift
//  OfficinaStudenti
//
//  Created by Mattia Ferrara on 21/11/22.
//

import SwiftUI

struct NotesSingleItem: View {
    var Note: NotesEntity
    
    var body: some View {
            HStack{
                Image(Note.image)
                    .resizable()
                    .frame(width: 150, height: 150)
                VStack(alignment: .leading){
                    Text(Note.name)
                        .fontWeight(.medium)
                        .font(.system(size: 24))
                        .foregroundColor(.primary)
                        
                    Spacer()
                    
                    Text("Teacher: \(Note.teacher)")
                        .font(.system(size: 21))
                        .foregroundColor(.primary)
                    Spacer()
                    
                    Text("\(Note.price)€")
                        .font(.system(size: 21))
                        .foregroundColor(.primary)
                }
                Spacer()
                Image(systemName:"chevron.right")
                    .foregroundColor(.primary)
                   
                    
            }
            .navigationTitle("Notes")
            .navigationBarTitleDisplayMode(.inline)
            .frame(width: 390, height: 200)
            .alignmentGuide(.listRowSeparatorLeading){ viewDimensions in
                return viewDimensions[.listRowSeparatorLeading] - 120
        }
            .alignmentGuide(.listRowSeparatorTrailing){ viewDimensions in
                return viewDimensions[.listRowSeparatorTrailing] - 20
        }
        }
    }




struct NotesSingleItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotesSingleItem(Note: Notes1)
            
            NotesSingleItem(Note: Notes1)
                .environment(\.colorScheme, .dark)
        }
    }
}
