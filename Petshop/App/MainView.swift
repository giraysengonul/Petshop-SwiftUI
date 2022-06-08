//
//  ContentView.swift
//  Petshop
//
//  Created by hakkı can şengönül on 7.06.2022.
//

import SwiftUI

struct MainView: View {
     // MARK: - PROPERTIES
    
    
     // MARK: - BODY
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house.circle.fill")
                        .imageScale(.large)
                    Text("Home")
                    
                }
            FavoriteView()
                .tabItem {
                    Image(systemName: "suit.heart")
                    
                        .imageScale(.large)
                    Text("Favorite")
                }
            MessageView()
                .tabItem {
                    Image(systemName: "message")
                        .imageScale(.large)
                    Text("Message")
                    
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                        .imageScale(.large)
                    Text("Profile")
                }
        }
    }
}

 // MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
