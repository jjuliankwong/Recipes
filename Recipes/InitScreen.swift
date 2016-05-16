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
        
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo) //You don't want to forcefully unwrap this as there is no image named logo.
        logoView.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        view.addSubview(logoView)
    }
  
  func showNavController()
  {
    performSegueWithIdentifier("initScreen", sender: self)
    
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}