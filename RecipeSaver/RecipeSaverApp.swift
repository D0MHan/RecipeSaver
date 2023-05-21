//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by 한동명 on 2023/04/19.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
