//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by 한동명 on 2023/05/16.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM : RecipesViewModel
    var category: Category
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{$0.category == category.rawValue}
    }
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
