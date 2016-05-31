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
        name.frame = CGRectMake(100, 40, 175, 50)
        name.font = UIFont(name: "Georgia", size: 15)
        name.backgroundColor = UIColor.whiteColor()
        name.textColor = UIColor.blackColor()
        name.textAlignment = NSTextAlignment.Center
        name.text = recipe!.recipeName
        self.view.addSubview(name)
        
        // Set up Title
        let ingred: UILabel = UILabel()
        ingred.frame = CGRectMake(10, 100, 175, 50)
        ingred.font = UIFont(name: "Georgia", size: 15)
        ingred.backgroundColor = UIColor.whiteColor()
        ingred.textColor = UIColor.blackColor()
        ingred.text = "Ingredients"
        self.view.addSubview(ingred)
        
        // Set up Title
        let instruct: UILabel = UILabel()
        instruct.frame = CGRectMake(10, 200, 175, 50)
        instruct.font = UIFont(name: "Georgia", size: 15)
        instruct.backgroundColor = UIColor.whiteColor()
        instruct.textColor = UIColor.blackColor()
        instruct.text = "Instructions"
        self.view.addSubview(instruct)
        
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
