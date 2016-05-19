//
//  MenuScreen.swift
//  Recipes
//
//  Created by Jacob on 5/9/16.
//  Copyright © 2016 JAJ. All rights reserved.
import UIKit

class MenuScreen: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        // Set up logo
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo)
        logoView.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        view.addSubview(logoView)
        
        // Set up "See My Recipes" Button
        let seeMyRecipesButton = UIButton()
        seeMyRecipesButton.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        seeMyRecipesButton.backgroundColor = UIColor.orangeColor()
        seeMyRecipesButton.setTitle("See My Recipes", forState: UIControlState.Normal)
        seeMyRecipesButton.addTarget(self, action: "goToRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(seeMyRecipesButton)
        
        // Set up "add Recipe" Button
      let addRecipeButton = UIButton(type: UIButtonType.System)
        addRecipeButton.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        addRecipeButton.backgroundColor = UIColor.orangeColor()
        addRecipeButton.setTitle("Add Recipe", forState: UIControlState.Normal)

        self.view.addSubview(addRecipeButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func goToRecipeScreen(sender: UIButton!)
    {
        let myRecipesScreen:MyRecipesScreen = MyRecipesScreen()
        
        self.presentViewController(myRecipesScreen, animated: true, completion: nil)
    }
    
    func goToNewRecipeScreen(sender: UIButton!)
    {
        let newRecipeScreen:NewRecipeScreen = NewRecipeScreen()
        
        self.presentViewController(newRecipeScreen, animated: true, completion: nil)
    }
    
    
    
}