//
//  SearchDataManager.swift
//  GIRLDINNER2
//
//  Created by Nomcebo Duma on 2023/08/05.
//
 import SwiftUI

@MainActor
class SearchDataManager: ObservableObject {

    @Published var results: [Result] = []
    
    init() {
   
    }
    func fetchRecipes(recipe: String) async throws {
        let  request = URLRequest(url: URL(string: "https://api.spoonacular.com/recipes/complexSearch?query=\(recipe)&maxFat=25&number=60&apiKey=d325e09d9c8a4e4eb89039b3ea39fbf8")!)
        
        let (data, _) = try await URLSession.shared.data(for: request)
        print(data)
       let recipeResponse = try JSONDecoder().decode(RecipeResponse.self, from: data)
        results = recipeResponse.results
        
        
    }

    }
