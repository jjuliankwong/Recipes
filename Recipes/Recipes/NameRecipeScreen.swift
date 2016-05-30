//
//  NameRecipeScreen.swift
//  Recipes
//
//  Created by Jacob on 5/25/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class NameRecipeScreen: UIViewController
{
    let width = 375
    let height = 667
    
    var recipe: Recipe? = nil
    
    let recipeNameTextField: UITextField = UITextField()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        // Set up Title
        let recipeTypeLabel: UILabel = UILabel()
        recipeTypeLabel.frame = CGRectMake(100, 40, 175, 50)
        recipeTypeLabel.font = UIFont(name: "Georgia", size: 15)
        recipeTypeLabel.backgroundColor = UIColor.whiteColor()
        recipeTypeLabel.textColor = UIColor.blackColor()
        recipeTypeLabel.textAlignment = NSTextAlignment.Center
        recipeTypeLabel.text = recipe!.recipeType +  " Recipe"
        self.view.addSubview(recipeTypeLabel)
        
        // Logo
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo)
        logoView.frame = CGRect(x: 75, y: 75, width: 225, height: 175)
        view.addSubview(logoView)
        
        // Set up Menu Button
        let menuButton = UIButton()
        menuButton.frame = CGRect(x: 10, y: 20, width: 60, height: 30)
        menuButton.layer.cornerRadius = 10
        menuButton.backgroundColor = UIColor.blueColor()
        menuButton.titleLabel!.font =  UIFont(name: "Georgia", size: 17)
        menuButton.setTitle("Menu", forState: UIControlState.Normal)
        menuButton.addTarget(self, action: "goToMenuScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(menuButton)
        
        
        // Set up Text Field for Ingredient Name
        recipeNameTextField.frame = CGRectMake(20, 250, 300, 40)
        recipeNameTextField.placeholder = "Enter recipe name Here"
        recipeNameTextField.font = UIFont.systemFontOfSize(15)
        recipeNameTextField.borderStyle = UITextBorderStyle.RoundedRect
        recipeNameTextField.autocorrectionType = UITextAutocorrectionType.No
        recipeNameTextField.keyboardType = UIKeyboardType.Default
        recipeNameTextField.returnKeyType = UIReturnKeyType.Done
        recipeNameTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        recipeNameTextField.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        self.view.addSubview(recipeNameTextField)
        
        // Set up goToAddIngredientScreenButton
        let goToInstructionScreenButton = UIButton()
        goToInstructionScreenButton.frame = CGRect(x: 215, y: 20, width: 150, height: 30)
        goToInstructionScreenButton.layer.cornerRadius = 10
        goToInstructionScreenButton.backgroundColor = UIColor.blueColor()
        goToInstructionScreenButton.setTitle("Add Ingredients", forState: UIControlState.Normal)
        goToInstructionScreenButton.addTarget(self, action: "goToAddIngredientsScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(goToInstructionScreenButton)
        
    }
    
    func goToAddIngredientsScreen (sender: UIButton!)
    {
        let recipeName: String? = self.recipeNameTextField.text
        recipe!.recipeName = recipeName!
        
        recipeNameTextField.text = ""
        
        let addIngredientScreen: AddIngredientScreen = AddIngredientScreen()
        addIngredientScreen.recipe = self.recipe
        
        self.presentViewController(addIngredientScreen, animated: true, completion: nil)

        
    }
    
    
    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()
        
        self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
}