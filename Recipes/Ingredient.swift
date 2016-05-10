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
    var amount: Int
    var amountType: String
    var type: String
    
    init(amountIn: Int, amountTypeIn: String, typeIn: String)
    {
        amount = amountIn
        amountType = amountTypeIn
        type = typeIn

    }
}