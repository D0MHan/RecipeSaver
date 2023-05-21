//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by 한동명 on 2023/05/18.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
