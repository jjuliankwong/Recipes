//
//  MyRecipesScreen.swift
//  Recipes
//
//  Created by Amrita Misha on 5/16/16.
//  Copyright © 2016 JAJ. All rights reserved.
//

import Foundation
import UIKit

class MyRecipesScreen: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    let tableView: UITableView = UITableView(frame: UIScreen.mainScreen().bounds, style:UITableViewStyle.Plain)
    var recipes: [String] = []
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
        
        
    }
    
    func tableView (tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        
        return self.recipes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.recipes[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        print("You selected cell #\(indexPath.row)!")
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
    
    