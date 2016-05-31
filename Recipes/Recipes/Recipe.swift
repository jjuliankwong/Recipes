/*
 *
 * Recipe Class
 * This is the class that holds all relevent information about a created recipe by the user.  It holds a list of all of the entered instructions, ingredients, and the type and name of the recipe.  It is stored using Realm. 
 *
 */

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
