//
//  StoredRecipe.swift
//  Recipes
//
//  Created by Jessica Houghton on 5/30/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class StoredRecipeScreen: UIViewController
{
    let width = 375
    let height = 667
    var recipe : Recipe?
    let realm = try! Realm()
    
    /***********
     This is the method that creates the menu screen and displays it. There is a logo like the previous screen, and two different buttons.  The "See My Recipes" button takes the user to a list that displays their created recipes, and the "add Recipe" button lets the user enter a screen to start creating a recipe.
     *********/
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
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
        let name: UILabel = UILabel()
        name.frame = CGRectMake(0, 60, 375, 50)
        name.font = UIFont(name: "Georgia", size: 20)
        name.backgroundColor = UIColor.whiteColor()
        name.textColor = UIColor.blackColor()
        name.textAlignment = NSTextAlignment.Center
        name.text = recipe!.recipeName
        self.view.addSubview(name)
        
        // Set up Title
        let ingred: UILabel = UILabel()
        ingred.frame = CGRectMake(10, 100, 375, 20)
        ingred.font = UIFont(name: "Georgia", size: 15)
        ingred.backgroundColor = UIColor.whiteColor()
        ingred.textColor = UIColor.blackColor()
        ingred.text = "Ingredients"
        self.view.addSubview(ingred)
        
        
        
        var ingredCounter = 0
        for ingredient in recipe!.ingredients {
            // Set up Title
            let specIngred: UILabel = UILabel()
            specIngred.frame = CGRectMake(20, (CGFloat)(120 + (15*ingredCounter)), 375, 15)
            specIngred.font = UIFont(name: "Georgia", size: 10)
            specIngred.backgroundColor = UIColor.whiteColor()
            specIngred.textColor = UIColor.blackColor()
            specIngred.text = recipe!.ingredients[ingredCounter].ingred
            self.view.addSubview(specIngred)
            ingredCounter++
        }
        
        // Set up Title
        let instruct: UILabel = UILabel()
        instruct.frame = CGRectMake(10, (CGFloat)(140 + (15*ingredCounter)), 175, 20)
        instruct.font = UIFont(name: "Georgia", size: 15)
        instruct.backgroundColor = UIColor.whiteColor()
        instruct.textColor = UIColor.blackColor()
        instruct.text = "Instructions"
        self.view.addSubview(instruct)
        
        var instructCounter = 0
        for instruction in recipe!.instructions {
            // Set up Title
            let specInstruct: UILabel = UILabel()
            specInstruct.frame = CGRectMake(20, (CGFloat)(120 + (15*ingredCounter) + 40 + 15*instructCounter), 375, 15)
            specInstruct.font = UIFont(name: "Georgia", size: 10)
            specInstruct.backgroundColor = UIColor.whiteColor()
            specInstruct.textColor = UIColor.blackColor()
            specInstruct.text = recipe!.instructions[instructCounter].instruct
            self.view.addSubview(specInstruct)
            instructCounter++
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()
        
        self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
    
}
