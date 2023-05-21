//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by 한동명 on 2023/04/19.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button("Add recipe manually") {
                showAddRecipe = true
            }
            .navigationTitle("NewRecipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
