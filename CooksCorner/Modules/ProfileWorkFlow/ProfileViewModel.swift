//
//  ProfileViewModel.swift
//  CooksCorner
//
//  Created by anjella on 14/3/24.
//

import Foundation

protocol ProfileViewModelType: AnyObject {
    func getRecipeCount() -> Int
    func getRecipe(index: Int) -> RecipeModel
}

class ProfileViewModel: ProfileViewModelType {
    
    private var recipeData: [RecipeModel] = RecipeModel.getRecipe()
    
    func getRecipeCount() -> Int {
        recipeData.count
    }
    
    func getRecipe(index: Int) -> RecipeModel {
        recipeData[index]
    }
}
