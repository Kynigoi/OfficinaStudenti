//
//  NotesViewModel.swift
//  OfficinaStudenti
//
//  Created by Mattia Ferrara on 21/11/22.
//

import Foundation

class NotesViewModel: ObservableObject, Identifiable{
    
    @Published var NotesList: [NotesEntity] = [
        Notes1,
        Notes2,
        Notes3,
        Notes4,
        Notes5,
        Notes6
    ]
    
    @Published var NotesNames: [String] = [
        Notes1.name,
        Notes2.name,
        Notes3.name,
        Notes4.name,
        Notes5.name,
        Notes6.name
    ]
}
