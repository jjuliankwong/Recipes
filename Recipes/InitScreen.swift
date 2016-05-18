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
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //performSelector(Selector("showNavController"), withObject: nil, afterDelay: 3)
        self.view.backgroundColor = UIColor.whiteColor()
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo) //You don't want to forcefully unwrap this as there is no image named logo.
        logoView.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        view.addSubview(logoView)
        
        // button to go to menu screen
        let goToMenuScreen = UIButton(type: UIButtonType.System) as UIButton
        goToMenuScreen.frame = CGRect(x: 0, y: 0, width: 400, height: 500)
        goToMenuScreen.backgroundColor = UIColor.orangeColor()
        goToMenuScreen.setTitle("goToMenuScreen", forState: UIControlState.Normal)
        goToMenuScreen.addTarget(self, action: Selector("goToMenuScreen"), forControlEvents: UIControlEvents.TouchUpInside)
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
        

       // let menuScreen:MenuScreen = MenuScreen()
        
        //self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
    
}