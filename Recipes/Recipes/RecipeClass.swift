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
    var ingredients: [Ingredient]
    var instructions: [String]
    
  init(ingredients: [Ingredient], instructions: [String])
    {
        self.ingredients = ingredients
        self.instructions = instructions
    }
    
    func addIngredient(ingredientIn: Ingredient)
    {
        ingredients.append(ingredientIn)
    }
    
    func addInstruction(instructionIn: String)
    {
        instructions.append(instructionIn)
    }
}
