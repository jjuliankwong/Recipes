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
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        let newRecipeLabel: UILabel = UILabel()
        newRecipeLabel.frame = CGRectMake(50, 150, 200, 21)
        newRecipeLabel.backgroundColor = UIColor.orangeColor()
        newRecipeLabel.textColor = UIColor.blackColor()
        newRecipeLabel.textAlignment = NSTextAlignment.Center
        newRecipeLabel.text = "test label"
        self.view.addSubview(newRecipeLabel)
        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
        