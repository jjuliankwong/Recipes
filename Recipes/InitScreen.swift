//
//  InitScreen.swift
//  Recipes
//
//  Created by Jacob on 5/10/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit

class InitScreen: UIViewController
{
    
    override func viewDidLoad()
    {
        let screenWidth = 375
        let screenHeight = 667
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //performSelector(Selector("showNavController"), withObject: nil, afterDelay: 3)
        self.view.backgroundColor = UIColor.whiteColor()
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo) //You don't want to forcefully unwrap this as there is no image named logo.
        logoView.frame = CGRect(x: 75, y: 50, width: 225, height: 175)
        view.addSubview(logoView)
        
        // button to go to menu screen
        let goToMenuScreen = UIButton()
        goToMenuScreen.frame = CGRect(x: screenWidth/4, y: screenHeight/2, width: screenWidth/2, height: screenHeight/10)
        goToMenuScreen.layer.cornerRadius = 10
        goToMenuScreen.backgroundColor = UIColor.blueColor()
        goToMenuScreen.setTitle("Enter myRecipes", forState: UIControlState.Normal)
        goToMenuScreen.addTarget(self, action: "goToMenuScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(goToMenuScreen)
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToMenuScreen(sender: UIButton!)
    {
        /*
        let menuScreen = MenuScreen(nibName: "menuScreen", bundle: nil)
        self.presentViewController(menuScreen, animated: true, completion: nil)
        */
        

       let menuScreen:MenuScreen = MenuScreen()
        
       self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
    
}