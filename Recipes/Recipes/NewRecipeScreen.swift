//
//  NewRecipeScreen.swift
//  Recipes
//
//  Created by Jacob on 5/18/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit

class NewRecipeScreen: UIViewController
{
    static var recipeType: String = ""
    
    override func viewDidLoad()
    {
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = 375
        let screenHeight = 667
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        // Prompt
        let newRecipeLabel: UILabel = UILabel()
        newRecipeLabel.frame = CGRectMake(40, 60, 300, 20)
        newRecipeLabel.font = UIFont(name: "Georgia", size: 15)
        newRecipeLabel.backgroundColor = UIColor.whiteColor()
        newRecipeLabel.textColor = UIColor.blackColor()
        newRecipeLabel.textAlignment = NSTextAlignment.Center
        newRecipeLabel.text = "What kind of recipe would you like to make?"
        self.view.addSubview(newRecipeLabel)
        
        // Set up Appetizer Button
        let appetizerButton = UIButton()
        appetizerButton.frame = CGRect(x: 133, y: 100, width: 110, height: 40)
        appetizerButton.layer.cornerRadius = 10
        appetizerButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        appetizerButton.backgroundColor = UIColor.blueColor()
        appetizerButton.setTitle("Appetizer Recipe", forState: UIControlState.Normal)
        appetizerButton.addTarget(self, action: "makeNewRecipe", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(appetizerButton)
        
        // Set up Bread Button
        let breadButton = UIButton()
        breadButton.frame = CGRect(x: 133, y: 150, width: 110, height: 40)
        breadButton.layer.cornerRadius = 10
        breadButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        breadButton.backgroundColor = UIColor.blueColor()
        breadButton.setTitle("Bread Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(breadButton)
        
        // Set up Breakfast Button
        let breakfastButton = UIButton()
        breakfastButton.frame = CGRect(x: 133, y: 200, width: 110, height: 40)
        breakfastButton.layer.cornerRadius = 10
        breakfastButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        breakfastButton.backgroundColor = UIColor.blueColor()
        breakfastButton.setTitle("Breakfast Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(breakfastButton)
        
        // Set up Salad Button
        let saladButton = UIButton()
        saladButton.frame = CGRect(x: 133, y: 250, width: 110, height: 40)
        saladButton.layer.cornerRadius = 10
        saladButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        saladButton.backgroundColor = UIColor.blueColor()
        saladButton.setTitle("Salad Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(saladButton)
        
        // Set up Sandwich Button
        let sandwhichButton = UIButton()
        sandwhichButton.frame = CGRect(x: 133, y: 300, width: 110, height: 40)
        sandwhichButton.layer.cornerRadius = 10
        sandwhichButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        sandwhichButton.backgroundColor = UIColor.blueColor()
        sandwhichButton.setTitle("Sandwich Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(sandwhichButton)
        
        // Set up Soup Button
        let soupButton = UIButton()
        soupButton.frame = CGRect(x: 133, y: 350, width: 110, height: 40)
        soupButton.layer.cornerRadius = 10
        soupButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        soupButton.backgroundColor = UIColor.blueColor()
        soupButton.setTitle("Bread Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(soupButton)
        
        // Set up Entree Button
        let entreeButton = UIButton()
        entreeButton.frame = CGRect(x: 133, y: 400, width: 110, height: 40)
        entreeButton.layer.cornerRadius = 10
        entreeButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        entreeButton.backgroundColor = UIColor.blueColor()
        entreeButton.setTitle("Entree Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(entreeButton)
        
        // Set up Dessert Button
        let dessertButton = UIButton()
        dessertButton.frame = CGRect(x: 133, y: 450, width: 110, height: 40)
        dessertButton.layer.cornerRadius = 10
        dessertButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        dessertButton.backgroundColor = UIColor.blueColor()
        dessertButton.setTitle("Dessert Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(dessertButton)
        
        // Set up Drink Button
        let drinkButton = UIButton()
        drinkButton.frame = CGRect(x: 133, y: 500, width: 110, height: 40)
        drinkButton.layer.cornerRadius = 10
        drinkButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        drinkButton.backgroundColor = UIColor.blueColor()
        drinkButton.setTitle("Drink Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(drinkButton)
        
        // Set up Sauce Button
        let sauceButton = UIButton()
        sauceButton.frame = CGRect(x: 133, y: 550, width: 110, height: 40)
        sauceButton.layer.cornerRadius = 10
        sauceButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        sauceButton.backgroundColor = UIColor.blueColor()
        sauceButton.setTitle("Sauce Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(sauceButton)
        
        // Set up Menu Button
        let menuButton = UIButton()
        menuButton.frame = CGRect(x: 10, y: 20, width: 60, height: 30)
        menuButton.layer.cornerRadius = 10
        menuButton.backgroundColor = UIColor.blueColor()
        menuButton.titleLabel!.font =  UIFont(name: "Georgia", size: 17)
        menuButton.setTitle("Menu", forState: UIControlState.Normal)
        menuButton.addTarget(self, action: "goToMenuScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(menuButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()
        
        self.presentViewController(menuScreen, animated: true, completion: nil)

    }
    
    func makeNewRecipe(sender: UIButton!)
    {
       //let newRecipe = Recipe(recipeType: recipeType)
        //goes to next recipe screen
        let nextScreen: NewRecipeScreen2 = NewRecipeScreen2()
        self.presentViewController(nextScreen, animated: true, completion: nil)
        
    }

}
        