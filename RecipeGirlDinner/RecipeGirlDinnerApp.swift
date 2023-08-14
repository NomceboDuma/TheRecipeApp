//
//  RecipeGirlDinnerApp.swift
//  RecipeGirlDinner
//
//  Created by Nomcebo Duma on 2023/08/08.
//

import SwiftUI

@main
struct RecipeGirlDinnerApp: App {
    @StateObject private var viewModel = RecipeViewModel()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(viewModel)
        }
    }
}
