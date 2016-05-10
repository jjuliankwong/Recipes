//
//  Ingredient.swift
//  Recipes
//
//  Created by Jessica Houghton on 5/10/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import Foundation
import UIKit

public class Ingredient
{
    var amountNum: Int
    var measureType: String
    var ingredientName: String
    
    init(amountNumIn: Int, measureTypeIn: String, ingredientNameIn: String)
    {
        amountNum = amountNumIn
        measureType = measureTypeIn
        ingredientName = ingredientNameIn
    }
}