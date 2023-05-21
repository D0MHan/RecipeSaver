//
//  AddRecipeView.swift
//  RecipeSaver
//
//  Created by 한동명 on 2023/05/16.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM : RecipesViewModel
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("음식 이름")) {
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("카테고리")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }.pickerStyle(.menu)
                }
                Section(header: Text("음식 설명")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("재료")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("레시피")) {
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        dismiss()
                    } label: {
                        Label("취소", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted{$0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("완료", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("새로운 레시피")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: selectedCategory.rawValue, datePublished: datePublished, url: "")
        recipesVM.addRecipe(recipe: recipe)
    }
}
