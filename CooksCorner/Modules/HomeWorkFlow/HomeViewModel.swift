//
//  HomeViewModel.swift
//  CooksCorner
//
//  Created by anjella on 13/3/24.
//

import UIKit

protocol HomeViewModelType: AnyObject {
    func getRecipeCount() -> Int
    func getRecipe(index: Int) -> RecipeModel
}

class HomeViewModel: HomeViewModelType {
    
    private var recipeData: [RecipeModel] = RecipeModel.getRecipe()
    
    func getRecipeCount() -> Int {
        recipeData.count
    }
    
    func getRecipe(index: Int) -> RecipeModel {
        recipeData[index]
    }
}
