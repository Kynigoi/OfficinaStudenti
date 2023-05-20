//
//  NotesEntity.swift
//  OfficinaStudenti
//
//  Created by Mattia Ferrara on 21/11/22.
//

import Foundation

struct NotesEntity: Identifiable {
    
    let id = UUID()
    let image: String
    let name: String
    let teacher: String
    let price: String
    let description: String
    
    
}
