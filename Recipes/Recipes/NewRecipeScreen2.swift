//
//  NewRecipeScreen2.swift
//  Recipes
//
//  Created by Jacob on 5/23/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit

class NewRecipeScreen2: UIViewController
{
    let width = 375
    let height = 667
    
    var recipe: Recipe = Recipe(recipeType: NewRecipeScreen.recipeType)
    
    var ingredient: Ingredient = Ingredient()
    let ingredientNameTextField: UITextField = UITextField()
    let ingredientAmountTextField: UITextField = UITextField()
    let ingredientUnitTextField: UITextField = UITextField()
    
    override func viewDidLoad()
    {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        // Set up Menu Button
        let menuButton = UIButton()
        menuButton.frame = CGRect(x: 10, y: 20, width: 60, height: 30)
        menuButton.layer.cornerRadius = 10
        menuButton.backgroundColor = UIColor.blueColor()
        menuButton.titleLabel!.font =  UIFont(name: "Georgia", size: 17)
        menuButton.setTitle("Menu", forState: UIControlState.Normal)
        menuButton.addTarget(self, action: "goToMenuScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(menuButton)
        
        // Set up Title
        let recipeTypeLabel: UILabel = UILabel()
        recipeTypeLabel.frame = CGRectMake(100, 20, 175, 50)
        recipeTypeLabel.font = UIFont(name: "Georgia", size: 15)
        recipeTypeLabel.backgroundColor = UIColor.whiteColor()
        recipeTypeLabel.textColor = UIColor.blackColor()
        recipeTypeLabel.textAlignment = NSTextAlignment.Center
        recipeTypeLabel.text = recipe.getRecipeType() +  "Recipe"
        self.view.addSubview(recipeTypeLabel)
        
        // Set up Text Field for Ingredient Name
        ingredientNameTextField.frame = CGRectMake(20, 100, 300, 40)
        ingredientNameTextField.placeholder = "Enter ingredient name Here"
        ingredientNameTextField.font = UIFont.systemFontOfSize(15)
        ingredientNameTextField.borderStyle = UITextBorderStyle.RoundedRect
        ingredientNameTextField.autocorrectionType = UITextAutocorrectionType.No
        ingredientNameTextField.keyboardType = UIKeyboardType.Default
        ingredientNameTextField.returnKeyType = UIReturnKeyType.Done
        ingredientNameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        ingredientNameTextField.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        //ingredientNameTextField.delegate = self
        self.view.addSubview(ingredientNameTextField)
        
        // Set up Text Field for Ingredient Amount
        ingredientAmountTextField.frame = CGRectMake(20, 150, 100, 40)
        ingredientAmountTextField.placeholder = "Enter ingredient amount here"
        ingredientAmountTextField.font = UIFont.systemFontOfSize(15)
        ingredientAmountTextField.borderStyle = UITextBorderStyle.RoundedRect
        ingredientAmountTextField.autocorrectionType = UITextAutocorrectionType.No
        ingredientAmountTextField.keyboardType = UIKeyboardType.Default
        ingredientAmountTextField.returnKeyType = UIReturnKeyType.Done
        ingredientAmountTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        ingredientAmountTextField.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        //ingredientAmountTextField.delegate = self
        self.view.addSubview(ingredientAmountTextField)
        
        // Set up Text Field for Ingredient Unit
        ingredientUnitTextField.frame = CGRectMake(20, 140, 150, 40)
        ingredientUnitTextField.placeholder = "Enter ingredient unit here"
        ingredientUnitTextField.font = UIFont.systemFontOfSize(15)
        ingredientUnitTextField.borderStyle = UITextBorderStyle.RoundedRect
        ingredientUnitTextField.autocorrectionType = UITextAutocorrectionType.No
        ingredientUnitTextField.keyboardType = UIKeyboardType.Default
        ingredientUnitTextField.returnKeyType = UIReturnKeyType.Done
        ingredientUnitTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        ingredientUnitTextField.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        //ingredientAmountTextField.delegate = self
        self.view.addSubview(ingredientUnitTextField)
        
        
        // Set up addIngredientButton
        let addIngredientButton = UIButton()
        addIngredientButton.frame = CGRect(x: 200, y: 150, width: 40, height: 40)
        addIngredientButton.layer.cornerRadius = 10
        addIngredientButton.backgroundColor = UIColor.blueColor()
        addIngredientButton.setTitle("+", forState: UIControlState.Normal)
        addIngredientButton.addTarget(self, action: "addIngredient:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(addIngredientButton)
        
    }

    func addIngredient (sender: UIButton!)
    {
    
        let ingredientName: String? = self.ingredientNameTextField.text
        //let ingredientAmount: Int? = self.ingredientAmountTextField.text as Int
        let ingredientUnit: String? = self.ingredientUnitTextField.text
        
        ingredient.setName(ingredientName!)
        ingredient.setAmount(1)
        ingredient.setAmountUnit(ingredientUnit!)
        recipe.addIngredient(ingredient)
    }
    
    func ingredientAmountTextFieldDidEndEditing(ingredientAmountTextField: UITextField) -> String
    {
        print("TextField did end editing method called")
        return ingredientAmountTextField.text!
    }

    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()
        
        self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
}