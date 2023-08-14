//
//  ContentView.swift
//  GIRLDINNER2
//
//  Created by Nomcebo Duma on 2023/08/01.
//

import SwiftUI

struct ContentView: View {
    
//    @StateObject private var  recipeViewModel = SearchView()
    
    var body: some View {
        TabView {
            VStack {
                HomeView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                }
                favouritesView()
                    .tabItem {
                        Image(systemName: "bookmark")
                        Text("Favorites")
                }
                
                
            }
          }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
