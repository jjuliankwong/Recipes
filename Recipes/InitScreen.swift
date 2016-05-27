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
    
    /***********
    This is the method that creates the screen and displays it.  We have a logo that is displayed, and a single button that allows the user to enter the application.  When the button is pressed, it calles goToMenuScreen.
    *********/
    override func viewDidLoad()
    {
        //hardcoding the screen attributes as variables
        let screenWidth = 375
        let screenHeight = 667
        //this creates and draws a screen
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        //creates our logo and displays it
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo)
        logoView.frame = CGRect(x: 75, y: 50, width: 225, height: 175)
        view.addSubview(logoView)
        
        // button to go to menu screen
        let goToMenuScreen = UIButton()
        
        //sets up button to enter myRecipes
        goToMenuScreen.frame = CGRect(x: screenWidth/4, y: screenHeight/2, width: screenWidth/2, height: screenHeight/10)
        goToMenuScreen.layer.cornerRadius = 10
        goToMenuScreen.backgroundColor = UIColor.blueColor()
        goToMenuScreen.setTitle("Enter myRecipes", forState: UIControlState.Normal)
        goToMenuScreen.addTarget(self, action: "goToMenuScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(goToMenuScreen)
    }
  
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /***********
     This method is called when the user presses the button in viewDidLoad.  It moves the view to the menu screen.
     *********/
    func goToMenuScreen(sender: UIButton!)
    {
       //Creates menu screen instance
        let menuScreen:MenuScreen = MenuScreen()
        
       //Moves view to the MenuScreen
       self.presentViewController(menuScreen, animated: true, completion: nil)
    }
}