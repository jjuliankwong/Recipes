//
//  addInstructionsScreen.swift
//  Recipes
//
//  Created by Jacob on 5/25/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit

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
        
        // Logo
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo)
        logoView.frame = CGRect(x: 75, y: 50, width: 225, height: 175)
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
        
        // Set up Title
        let recipeTypeLabel: UILabel = UILabel()
        recipeTypeLabel.frame = CGRectMake(37.5, 40, 300, 50)
        recipeTypeLabel.font = UIFont(name: "Georgia", size: 15)
        recipeTypeLabel.backgroundColor = UIColor.whiteColor()
        recipeTypeLabel.textColor = UIColor.blackColor()
        recipeTypeLabel.textAlignment = NSTextAlignment.Center
        recipeTypeLabel.text = "Press the + button to add each instruction"
        self.view.addSubview(recipeTypeLabel)
        
        // Set up Text Field for instruction
        instructionTextField.frame = CGRectMake(20, 250, 300, 40)
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
        addInstructionButton.frame = CGRect(x: 137.5, y: 400, width: 50, height: 50)
        addInstructionButton.layer.cornerRadius = 10
        addInstructionButton.backgroundColor = UIColor.blueColor()
        addInstructionButton.setTitle("+", forState: UIControlState.Normal)
        addInstructionButton.addTarget(self, action: "addInstruction:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(addInstructionButton)
        
    }
    
    func addInstruction (sender: UIButton!)
    {
        let instruction: String? = self.instructionTextField.text
        recipe!.addInstruction(instruction!)
        instructionTextField.text = ""
        
    }
    
    
    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()
        
        self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
}