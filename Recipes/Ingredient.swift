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
    var amount: Int = 0
    var amountUnit: String = ""
    var name: String = ""
    
    init()
    {

    }
    
    func setName (nameIn: String)
    {
        name = nameIn
    }
    
    func setAmount (amountIn: Int)
    {
        amount = amountIn
    }
    
    func setAmountUnit (amountUnitIn: String)
    {
        amountUnit = amountUnitIn
    }
}