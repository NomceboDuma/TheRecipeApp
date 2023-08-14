//
//  RecipeViewModel.swift
//  RecipeGirlDinner
//
//  Created by Nomcebo Duma on 2023/08/10.
//

import Foundation
class RecipeViewModel: ObservableObject {
    @Published var isFavorite = false

    func toggleFavorite() {
        isFavorite.toggle()
    }
}
