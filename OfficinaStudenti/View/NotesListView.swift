//
//  NotesListView.swift
//  OfficinaStudenti
//
//  Created by Mattia Ferrara on 21/11/22.
//

import SwiftUI

struct NotesListView: View {
    @ObservedObject var NotesVM = NotesViewModel()
    @State private var searchText = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectedTab = 0

    
    var body: some View {
        NavigationStack{
            VStack {
                Rectangle()
                    .frame(height: 0)
                    .background(Color("NavigationBarBackground"))
                    
                Spacer()
                    .background(Color(red: 242/255, green: 242/255, blue: 247/255))
                    
                List(NotesVM.NotesList) {note in
                    
                    VStack{
                        NavigationLink{
                            NotesDetailsView(Note: note)
                        } label: {
                            NotesSingleItem(Note: note)
                        }
                        Spacer()
                    }
                    .listRowBackground(Color("ScreenBackground"))
                    .listRowSeparatorTint(Color("ListRowSeparatorColor"))
                }
                .listStyle(.plain)
                .searchable(text: $searchText, prompt: "Search name, teacher or subject") {
                    ForEach(NotesVM.NotesList) {note in
                        if((note.name.lowercased().range(of: searchText.lowercased()) != nil) ||
                           (note.teacher.lowercased().range(of:searchText.lowercased()) != nil)){
                            VStack{
                                NavigationLink{
                                    NotesDetailsView(Note: note)
                                } label: {
                                    NotesSingleItem(Note: note)
                                }
                            }
                            .listRowBackground(Color("ScreenBackground"))
                            .listRowSeparatorTint(Color("ListRowSeparatorColor"))
                        }
                        
                    }
                    .listRowBackground(Color("ScreenBackground"))
                    .listRowSeparatorTint(Color("ListRowSeparatorColor"))
                           }
                
                TabView(selection: $selectedTab) {
                    TabViewModel()
                        .tabItem {
                            Label("Shop", systemImage: "cart.fill")
                        }
                    TabViewModel()
                        .tabItem {
                            Label("News", systemImage: "newspaper.fill")
                        }
                    
                    TabViewModel()
                        .tabItem {
                            Label("Info", systemImage: "info.bubble.fill")
                        }
                    
                    TabViewModel()
                        .tabItem {
                            Label("Profile", systemImage: "person.fill")
                        }
                }
                .tint(Color(red: 228/255, green: 71/255, blue: 28/255))
                .frame(height: 40)
                .onAppear() {
                       UITabBar.appearance().backgroundColor = UIColor(Color("TabBarBackground"))
                   }
            }
            .background(Color("ScreenBackground"))
        }
        .tint(Color(red: 228/255, green: 71/255, blue: 28/255))
    }

}


struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotesListView()

            NotesListView()
                .environment(\.colorScheme, .dark)
        }
    }
}
