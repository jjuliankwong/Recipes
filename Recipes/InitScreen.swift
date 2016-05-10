//
//  InitScreen.swift
//  Recipes
//
//  Created by Jacob on 5/10/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import UIKit

public class InitScreen: UIViewController
{
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //performSelector(Selector("showNavController"), withObject: nil, afterDelay: 3)
        
        let logo = UIImage(named: "logo")
        let logoView = UIImageView(image: logo!)
        logoView.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        view.addSubview(logoView)

        
        func showNavController()
        {
            performSegueWithIdentifier("initScreen", sender: self)
            
        }
        
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}