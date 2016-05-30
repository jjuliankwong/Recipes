//
//  MyRecipesScreen.swift
//  Recipes
//
//  Created by Amrita Misha on 5/16/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import Foundation
import UIKit
import Realm
import RealmSwift

class MyRecipesScreen: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    let tableView: UITableView = UITableView(frame: UIScreen.mainScreen().bounds, style:UITableViewStyle.Plain)
    //var realm: Realm? = nil
    let realm = try! Realm()
    var myRecipes: Results<Recipe>?


    /*
    var permanentRecipes: Results<(PermanentRecipe,,>)//: [PermanentRecipe]
    {
       get
       {
            return realm?.objects(PermanentRecipe)

            //return PermanentRecipe.objects<T: PermanentRecipe
            //let storedRecipes = PermanentRecipe.allObjects()
            //var recipesToAccess: [PermanentRecipe] = []
            //return Array(PermanentRecipe. allObjects())
 
            /*
            for (var i = 0; i < permanentRecipes.count; i++)
            {
                var uInt: UInt = UInt(i)
                var uInt2: UInt = uInt
                recipesToAccess.append(storedRecipes.objectAtIndex(uInt2) as! PermanentRecipe)
            }
 */
            /*
            for object: RLMObject in storedRecipes
            {

                permanentRecipes.append(object)
    
            }
 */
            
            //return recipesToAccess
        }
    }
    */
    //var recipes: Recipe? = nil
    
    let width = 375
    let height = 667
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myRecipes = realm.objects(Recipe)

        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        // stringRecipes.append(recipes!.getName())
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 70, width: 375, height: 697)
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "CellIdentifier")
        self.view.addSubview(self.tableView)
        
        // Set up Menu Button
        let menuButton = UIButton()
        menuButton.frame = CGRect(x: 10, y: 20, width: 60, height: 30)
        menuButton.layer.cornerRadius = 10
        menuButton.backgroundColor = UIColor.blueColor()
        menuButton.titleLabel!.font =  UIFont(name: "Georgia", size: 17)
        menuButton.setTitle("Menu", forState: UIControlState.Normal)
        menuButton.addTarget(self, action: "goToMenuScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(menuButton)
        
    }
    
    func tableView (tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return myRecipes!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        /*
        
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        //cell.textLabel!.text = stringRecipes[indexPath.row]
        
        let button = UIButton(type: UIButtonType.System)
        button.frame = CGRectMake(325, 0, 40, 40)
        button.backgroundColor = UIColor.greenColor()
        button.setTitle(">", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        cell.addSubview(button)
        
        return cell
 */
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath) as UITableViewCell
        
        //let singlePermanentRecipe = myRecipes.first//permanentRecipes.objectAtIndex(index) as! PermanentRecipe
        let rlmRecipe: Recipe = myRecipes![indexPath.row]
        cell.textLabel!.text = rlmRecipe.recipeName
        //cell.textLabel!.text = singlePermanentRecipe!.getName()
        
        return cell
    }

    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        print("You selected cell #\(indexPath.row)!")
    }
    
    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()
        
        self.presentViewController(menuScreen, animated: true, completion: nil)
        
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
    
    