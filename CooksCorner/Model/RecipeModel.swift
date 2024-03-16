//
//  RecipeModel.swift
//  CooksCorner
//
//  Created by anjella on 13/3/24.
//

import Foundation

struct RecipeModel {
    var recipeImage: String
    var recipeName: String
    var chiefName: String
    var recipeLikeCount: Int
    var recipeSavedCount: Int
    
    static func getRecipe() -> [RecipeModel] {
        return [RecipeModel(recipeImage: "recipeImage", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170), RecipeModel(recipeImage: "recipeImage2", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170), RecipeModel(recipeImage: "recipeImage2", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170), RecipeModel(recipeImage: "recipeImage", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170), RecipeModel(recipeImage: "recipeImage", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170), RecipeModel(recipeImage: "recipeImage2", recipeName: "Recipe-Recipe", chiefName: "by Ainsley Harriott", recipeLikeCount: 118, recipeSavedCount: 170)
        ]
    }
}

