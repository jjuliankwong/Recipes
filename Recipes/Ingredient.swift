//
//  Ingredient.swift
//  Recipes
//
//  Created by Jessica Houghton on 5/10/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import Foundation
import UIKit

public class Ingredient: NSObject
{
    var amount: Int = 0
    var amountUnit: String = ""
    var name: String = ""
    
    override init()
    {

    }
    
    func changeName (nameIn: String)
    {
        name = nameIn
    }
    
    func changeAmount (amountIn: Int)
    {
        amount = amountIn
    }
    
    func changeAmountUnit (amountUnitIn: String)
    {
        amountUnit = amountUnitIn
    }
}