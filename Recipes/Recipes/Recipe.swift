//
//  RecipeClass.swift
//  Recipes
//
//  Created by Amrita Misha on 5/10/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import Foundation
import UIKit
import Realm
import RealmSwift


public class Recipe: Object
{
    var ingredients: List<Ingredient> = List<Ingredient>()
    var instructions: List<Instruction> = List<Instruction>()
    dynamic var recipeType: String?
    dynamic var recipeName: String?
}
