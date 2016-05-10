//
//  MenuScreen.swift
//  Recipes
//
//  Created by Jacob on 5/9/16.
//  Copyright © 2016 JAJ. All rights reserved.
import UIKit

public class MenuScreen: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: UIButtonType.System) as UIButton
        button.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        button.backgroundColor = UIColor.orangeColor()
        button.setTitle("See My Recipes", forState: UIControlState.Normal)
        button.addTarget(self, action: "goToRecipeScreen", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        
        // Amrita messed up
        // jessica messed up
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func goToRecipeScreen(sender: UIButton!)
    {
        
    }
    
}