//
//  NewRecipeScreen2.swift
//  Recipes
//
//  Created by Jacob on 5/23/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class AddIngredientScreen: UIViewController
{
    let width = 375
    let height = 667
    
    var recipe: Recipe?
    
    
    let ingredientNameTextField: UITextField = UITextField()
    let ingredientAmountTextField: UITextField = UITextField()
    let ingredientUnitTextField: UITextField = UITextField()
    
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
        recipeTypeLabel.text = recipe!.recipeType! +  " Recipe"
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
        ingredientNameTextField.frame = CGRectMake(20, 250, 300, 40)
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
        ingredientAmountTextField.frame = CGRectMake(20, 300, 300, 40)
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
        ingredientUnitTextField.frame = CGRectMake(20, 350, 300, 40)
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
        addIngredientButton.frame = CGRect(x: 162.5, y: 400, width: 50, height: 50)
        addIngredientButton.layer.cornerRadius = 10
        addIngredientButton.backgroundColor = UIColor.blueColor()
        addIngredientButton.setTitle("+", forState: UIControlState.Normal)
        addIngredientButton.addTarget(self, action: "addIngredient:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(addIngredientButton)
        
        // Set up goToInstructionScreenButton
        let goToInstructionScreenButton = UIButton()
        goToInstructionScreenButton.frame = CGRect(x: 215, y: 20, width: 150, height: 30)
        goToInstructionScreenButton.layer.cornerRadius = 10
        goToInstructionScreenButton.backgroundColor = UIColor.blueColor()
        goToInstructionScreenButton.setTitle("Add Instructions", forState: UIControlState.Normal)
        goToInstructionScreenButton.addTarget(self, action: "goToAddInstructionsScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(goToInstructionScreenButton)
        
    }

    func addIngredient (sender: UIButton!)
    {
        let ingredientName: String? = self.ingredientNameTextField.text
        let ingredientAmount: String? = self.ingredientAmountTextField.text
        let ingredientUnit: String? = self.ingredientUnitTextField.text
        
        /*
        ingredient.changeName(ingredientName!)
        ingredient.changeAmount(1)
        ingredient.changeAmountUnit(ingredientUnit!)
        recipe!.addIngredient(ingredient)
 */
        
        ingredientNameTextField.text = ""
        ingredientAmountTextField.text = ""
        ingredientUnitTextField.text = ""
        var ingredient: Ingredient = Ingredient()
        ingredient.ingred = ingredientUnit! + " " + ingredientAmount! + " " + ingredientName!
        recipe!.ingredients.append(ingredient)

    }
    
    func goToAddInstructionsScreen (sender: UIButton!)
    {
        let addInstructionsScreen: AddInstructionsScreen = AddInstructionsScreen()
        addInstructionsScreen.recipe = self.recipe!
        self.presentViewController(addInstructionsScreen, animated: true, completion: nil)
    }


    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()

        self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
}