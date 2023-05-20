//
//  NotesDetailsView.swift
//  OfficinaStudenti
//
//  Created by Mattia Ferrara on 21/11/22.
//

import SwiftUI

struct NotesDetailsView: View {
    var Note: NotesEntity
    @State private var selectedTab = 0

    var body: some View {
        
        NavigationStack{
                Rectangle()
                    .frame(height: 0)
                Divider()
                Spacer()
            
            ScrollView{
               
                VStack{
                    
                    Text(Note.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Image(Note.image)
                        .resizable()
                        .frame(width: 250, height: 250)
                    Text("Teacher: \(Note.teacher)")
                        .fontWeight(.medium)
                        .font(.system(size: 24))
                    HStack{
                        Button{
                            
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 125, height: 40)
                                    .foregroundColor(Color("OrderButtonTextColor"))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(red: 151/255, green: 151/255, blue: 151/255), lineWidth: 1)
                                    )
                                Text("Preview")
                                    .foregroundColor(.primary)
                                    .fontWeight(.medium)
                                
                            }
                            .padding(.horizontal)
                        }
                        Button{
                            
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 200, height: 40)
                                    .foregroundColor(Color(red: 228/255, green: 71/255, blue: 28/255))
                                Text("Order | \(Note.price)€")
                                    .foregroundColor(Color("OrderButtonTextColor"))
                                    .fontWeight(.bold)
                                    .font(.title2)
                            }
                        }
                    }
                    .padding(.bottom)
                    VStack(alignment: .leading){
                        Text("Description")
                            .font(.title2)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        Text(Note.description)
                            .font(.system(size: 21))
                            .fontWeight(.regular)
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.bottom, 100)
                .background(Color("ScreenBackground"))
            }
            .background(Color("ScreenBackground"))
            
                    Spacer()
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
            
        }
        
    }
    


struct NotesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NotesDetailsView(Note: Notes1)
        
        NotesDetailsView(Note: Notes1)
            .environment(\.colorScheme, .dark)
    }
}
