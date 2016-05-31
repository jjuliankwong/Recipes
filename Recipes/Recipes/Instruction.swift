/*
 *
 * Instruction Class
 * This is the class that holds an instruction.  A user will enter all the relevent information about an instruction used in a recipe and then this will be stored in a string.
 *
 */

import Foundation
import UIKit
import Realm
import RealmSwift

public class Instruction: Object
{
    dynamic var instruct: String = ""
}