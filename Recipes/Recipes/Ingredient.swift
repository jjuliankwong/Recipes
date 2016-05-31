/*
 *
 * Ingredient Class
 * This is the class that holds an ingredient.  A user will enter all the relevent information about an ingredient used in a recipe and then this will be stored in a string. 
 *
 */

import Foundation
import UIKit
import Realm
import RealmSwift

public class Ingredient: Object
{
    dynamic var ingred: String = ""
    
}