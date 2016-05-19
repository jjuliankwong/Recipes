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
        newRecipeLabel.frame = CGRectMake(50, 50, 300, 15)
        newRecipeLabel.centerXAnchor
        newRecipeLabel.font = UIFont(name: "Georgia", size: 12)
        newRecipeLabel.backgroundColor = UIColor.whiteColor()
        newRecipeLabel.textColor = UIColor.blackColor()
        newRecipeLabel.textAlignment = NSTextAlignment.Center
        newRecipeLabel.text = "What kind of recipe would you like to make?"
        self.view.addSubview(newRecipeLabel)
        
        // Set up Appetizer Button
        let appetizerButton = UIButton()
        appetizerButton.frame = CGRect(x: 50, y: 100, width: 150, height: 40)
        appetizerButton.layer.cornerRadius = 10
        appetizerButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        appetizerButton.backgroundColor = UIColor.blueColor()
        appetizerButton.setTitle("Appetizer Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(appetizerButton)
        
        // Set up Bread Button
        let breadButton = UIButton()
        breadButton.frame = CGRect(x: 50, y: 150, width: 130, height: 40)
        breadButton.layer.cornerRadius = 10
        breadButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        breadButton.backgroundColor = UIColor.blueColor()
        breadButton.setTitle("Bread Recipe", forState: UIControlState.Normal)
        //appetizerButton.addTarget(self, action: "goToNewRecipeScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(breadButton)
        
        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
        