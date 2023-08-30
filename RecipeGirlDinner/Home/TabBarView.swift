//
//  TabBarView.swift
//  GIRLDINNER2
//
//  Created by Nomcebo Duma on 2023/08/05.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    @StateObject private var searchDataManager = SearchDataManager()
    
    var body: some View {
        TabView {
            HomeView()
                .tag(0)
                .tabItem{
                    
                    Image(systemName: "house")
                    Text("Home")
                }
            SearchView()
                .tag(1)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            favouritesView()
                .tag(3)
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Favorites")
                }
            
            
            
        }
        .environmentObject(searchDataManager)
        .accentColor(.red)
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
