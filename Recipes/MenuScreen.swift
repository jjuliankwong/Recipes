//
//  MenuScreen.swift
//  Recipes
//
//  Created by Jacob on 5/9/16.
//  Copyright © 2016 JAJ. All rights reserved.
import UIKit

class MenuScreen: UIViewController
{
    let width = 375
    let height = 667
    var recipe : Recipe? = nil
    
    /***********
     This is the method that creates the menu screen and displays it. There is a logo like the previous screen, and two different buttons.  The "See My Recipes" button takes the user to a list that displays their created recipes, and the "add Recipe" button lets the user enter a screen to start creating a recipe.
     *********/
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        // Set up logo
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo)
        logoView.frame = CGRect(x: 75, y: 50, width: 225, height: 175)
        view.addSubview(logoView)
        
        // Set up "See My Recipes" Button
        let seeMyRecipesButton = UIButton()
        seeMyRecipesButton.frame = CGRect(x: 50, y: 225, width: 275, height: 150)
        seeMyRecipesButton.layer.cornerRadius = 10
        seeMyRecipesButton.backgroundColor = UIColor.blueColor()
        seeMyRecipesButton.setTitle("See My Recipes", forState: UIControlState.Normal)
        seeMyRecipesButton.addTarget(self, action: "goToRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(seeMyRecipesButton)
        
        // Set up "add Recipe" Button
      let addRecipeButton = UIButton()
        addRecipeButton.frame = CGRect(x: 50, y: 400, width: 275, height: 150)
        addRecipeButton.layer.cornerRadius = 10
        addRecipeButton.backgroundColor = UIColor.blueColor()
        addRecipeButton.setTitle("Add Recipe", forState: UIControlState.Normal)
        addRecipeButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(addRecipeButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /***********
     This method is called when the user presses See My Recipes button.  It takes the user to a new screen that is a list that displays all previously created recipes.
     *********/
    func goToRecipeScreen(sender: UIButton!)
    {
        let myRecipesScreen:MyRecipesScreen = MyRecipesScreen()
        
        self.presentViewController(myRecipesScreen, animated: true, completion: nil)
    }
    
    /***********
     This method is called when the user presses Add Recipe button.  It takes the user to a new screen that allows the user to create a new Recipe based upon the type of recipe they want to create.
     *********/
    func goToNewRecipeScreen(sender: UIButton!)
    {
        let newRecipeScreen:NewRecipeScreen = NewRecipeScreen()
        
        self.presentViewController(newRecipeScreen, animated: true, completion: nil)
    }
    
    
    
}