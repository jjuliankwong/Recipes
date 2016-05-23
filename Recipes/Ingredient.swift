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
    
    init()
    {

    }
    
    func addType (typeIn: String)
    {
        type = typeIn
    }
    
    func addAmount (amountIn: Int)
    {
        amount = amountIn
    }
    
    func addAmountType (amountTypeIn: String)
    {
        amountType = amountTypeIn
    }
}