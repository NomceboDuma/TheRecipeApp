//
//  TabBarView.swift
//  GIRLDINNER2
//
//  Created by Nomcebo Duma on 2023/08/05.
//


import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    @State private var isEditing = false
    @EnvironmentObject  var searchDataManager : SearchDataManager
    @State private var errorMessage: String?
    
    
    var body: some View {
        VStack {
            SearchBarView(text: $searchText, isEditing: $isEditing)
            
            //            SearchBarView()
            
            List(searchDataManager.results, id: \.id) { recipe in
                
                Text(recipe.title)
            }
            
            .listStyle(.plain)
            
            Spacer()
            
            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            }
        }
        .padding()
        .onChange(of: searchText) { newValue in
            Task.init {
                do {
                    try await searchDataManager.fetchRecipes(recipe: searchText)
                    errorMessage = nil
                } catch {
                    errorMessage = error.localizedDescription
                }
            }
            
        }
    }
    
    struct SearchView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView()
        }
    }
}
