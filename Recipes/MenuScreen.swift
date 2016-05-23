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
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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