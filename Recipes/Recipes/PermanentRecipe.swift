//
//  PermanentRecipe.swift
//  Recipes
//
//  Created by Jacob on 5/27/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import Foundation
import UIKit
import Realm

public class PermanentRecipe: RLMObject
{
    dynamic var ingredients: [Ingredient]
    dynamic var instructions: [String]
    dynamic var recipeType: String
    dynamic var recipeName: String
    
    init(nameIn: String, typeIn: String, ingredientsIn: [Ingredient], instructionsIn: [String])
    {
        self.recipeName = nameIn
        self.recipeType = typeIn
        self.ingredients = ingredientsIn
        self.instructions = instructionsIn
        super.init()
    }
    
    
    func getName() -> String
    {
        return recipeName
    }
}
