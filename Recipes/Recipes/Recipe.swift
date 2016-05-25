//
//  RecipeClass.swift
//  Recipes
//
//  Created by Amrita Misha on 5/10/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import Foundation
import UIKit

public class Recipe
{
    var ingredients: [Ingredient] = []
    var instructions: [String] = []
    var recipeType: String = ""
    
    init()
    {
    }
   
    init(ingredients: [Ingredient], instructions: [String], recipeType: String)
    {
        self.ingredients = ingredients
        self.instructions = instructions
        self.recipeType = recipeType
    }
    
    func setRecipeType(recipeTypeIn: String)
    {
        self.recipeType = recipeTypeIn
    }
    
    func addIngredient(ingredientIn: Ingredient)
    {
        ingredients.append(ingredientIn)
    }
    
    func addInstruction(instructionIn: String)
    {
        instructions.append(instructionIn)
    }
    
    func getRecipeType() -> String
    {
        return recipeType
    }
}
