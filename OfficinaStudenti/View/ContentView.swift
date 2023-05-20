//
//  ContentView.swift
//  OfficinaStudenti
//
//  Created by Mattia Ferrara on 20/11/22.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedTab = 0
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
    NavigationStack{
            ZStack{
                VStack {
                    Rectangle()
                        .frame(height: 0)
                        .background(Color("NavigationBarBackground"))
                    Divider()
                    Spacer()
                }
                .background(Color("ScreenBackground"))
                .navigationTitle(Text("Shop"))
                
                VStack{
                    
                    NavigationLink{
                        NotesListView()
                    } label: {
                        ShopCategoryView(category: "Notes          ", image: "Notes")
                            
                    }
                    
                    NavigationLink{
                        ShopCategoryView(category: "Electronics", image: "Electronics")
                    } label: {
                        ShopCategoryView(category: "Electronics", image: "Electronics")
                            
                    }
                    
                    NavigationLink{
                        ShopCategoryView(category: "Paperwork", image: "Paperwork")
                    } label: {
                        ShopCategoryView(category: "Paperwork", image: "Paperwork")
                            
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
                    .padding(.top, 60)
                    .tint(Color(red: 228/255, green: 71/255, blue: 28/255))
                    .onAppear(){
                        UITabBar.appearance().backgroundColor = UIColor( Color("TabBarBackground"))
                    }
                }
                
                Spacer()
            }
        }
    .tint(Color(red: 228/255, green: 71/255, blue: 28/255))
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
       
    }
}
