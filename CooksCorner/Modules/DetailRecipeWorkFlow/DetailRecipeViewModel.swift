//
//  DetailRecipeViewModel.swift
//  CooksCorner
//
//  Created by anjella on 15/3/24.
//

import Foundation

protocol DetailRecipeViewModelType: AnyObject {
    
}

class DetailRecipeViewModel {
    
    var recipe: RecipeModel?
    
    init(recipe: RecipeModel?) {
        self.recipe = recipe
    }
}
