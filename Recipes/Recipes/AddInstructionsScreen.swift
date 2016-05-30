//
//  addInstructionsScreen.swift
//  Recipes
//
//  Created by Jacob on 5/25/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class AddInstructionsScreen: UIViewController
{
    let width = 375
    let height = 667
    
    var recipe: Recipe? = nil

    let instructionTextField: UITextField = UITextField()
    let addInstructionButton: UIButton = UIButton()

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        // Set up Title
        let recipeTypeLabel: UILabel = UILabel()
        recipeTypeLabel.frame = CGRectMake(37.5, 250, 300, 50)
        recipeTypeLabel.font = UIFont(name: "Georgia", size: 15)
        recipeTypeLabel.backgroundColor = UIColor.whiteColor()
        recipeTypeLabel.textColor = UIColor.blackColor()
        recipeTypeLabel.textAlignment = NSTextAlignment.Center
        recipeTypeLabel.text = "Press the + button to add each instruction"
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
        
        // Set up Text Field for instruction
        instructionTextField.frame = CGRectMake(20, 300, 300, 40)
        instructionTextField.placeholder = "Enter instruction here"
        instructionTextField.font = UIFont.systemFontOfSize(15)
        instructionTextField.borderStyle = UITextBorderStyle.RoundedRect
        instructionTextField.autocorrectionType = UITextAutocorrectionType.No
        instructionTextField.keyboardType = UIKeyboardType.Default
        instructionTextField.returnKeyType = UIReturnKeyType.Done
        instructionTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        instructionTextField.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        self.view.addSubview(instructionTextField)
        
        // Set up addIngredientButton
        addInstructionButton.frame = CGRect(x: 162.5, y: 350, width: 50, height: 50)
        addInstructionButton.layer.cornerRadius = 10
        addInstructionButton.backgroundColor = UIColor.blueColor()
        addInstructionButton.setTitle("+", forState: UIControlState.Normal)
        addInstructionButton.addTarget(self, action: "addInstruction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(addInstructionButton)
        
        // Set up finishRecipeButton
        let finishRecipeButton = UIButton()
        finishRecipeButton.frame = CGRect(x: 215, y: 20, width: 150, height: 30)
        finishRecipeButton.layer.cornerRadius = 10
        finishRecipeButton.backgroundColor = UIColor.blueColor()
        finishRecipeButton.setTitle("Finish Recipe", forState: UIControlState.Normal)
        finishRecipeButton.addTarget(self, action: "finishRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(finishRecipeButton)
        
    }
    
    func addInstruction (sender: UIButton!)
    {
        let instruction: Instruction = Instruction()
        instruction.instruct = self.instructionTextField.text!
        recipe!.instructions.append(instruction)
        instructionTextField.text = ""
    }
    
    func finishRecipe (sender: UIButton!)
    {
        // You only need to do this once (per thread)
        let realm = try! Realm()
        
        
        // Add to the Realm inside a transaction
        try! realm.write {
            realm.add(recipe!)
        }
 
        let myRecipesScreen: MyRecipesScreen = MyRecipesScreen()

        self.presentViewController(myRecipesScreen, animated: true, completion: nil)
        
    }
    
    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()
        
        self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
}