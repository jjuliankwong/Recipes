/*
 *
 * NewRecipeScreen Class
 * This is the screen that shows up when you requested to create a new recipe. It displays all the different types of recipes that one can create, and also allows the user to go back to the menu screen by pressing a button. 
 *
 */

import UIKit
import Realm
import RealmSwift

class NewRecipeScreen: UIViewController
{
    
    let recipe: Recipe = Recipe()
    
    /***********
     This is the method that creates the NewRecipeScreen and loads it.
     *********/
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = 375
        let screenHeight = 667
        
        
        // Set background
        self.view.backgroundColor = UIColor.whiteColor()
        
        // Prompt
        let newRecipeLabel: UILabel = UILabel()
        newRecipeLabel.frame = CGRectMake(40, 60, 300, 20)
        newRecipeLabel.font = UIFont(name: "Georgia", size: 15)
        newRecipeLabel.backgroundColor = UIColor.whiteColor()
        newRecipeLabel.textColor = UIColor.blackColor()
        newRecipeLabel.textAlignment = NSTextAlignment.Center
        newRecipeLabel.text = "What kind of recipe would you like to make?"
        self.view.addSubview(newRecipeLabel)
        
        // Set up Appetizer Button
        let appetizerButton = UIButton()
        appetizerButton.frame = CGRect(x: 133, y: 100, width: 110, height: 40)
        appetizerButton.layer.cornerRadius = 10
        appetizerButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        appetizerButton.backgroundColor = UIColor.blueColor()
        appetizerButton.setTitle("Appetizer Recipe", forState: UIControlState.Normal)
        appetizerButton.addTarget(self, action: "makeAppetizerRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(appetizerButton)
        
        // Set up Bread Button
        let breadButton = UIButton()
        breadButton.frame = CGRect(x: 133, y: 150, width: 110, height: 40)
        breadButton.layer.cornerRadius = 10
        breadButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        breadButton.backgroundColor = UIColor.blueColor()
        breadButton.setTitle("Bread Recipe", forState: UIControlState.Normal)
        breadButton.addTarget(self, action: "makeBreadRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(breadButton)
        
        // Set up Breakfast Button
        let breakfastButton = UIButton()
        breakfastButton.frame = CGRect(x: 133, y: 200, width: 110, height: 40)
        breakfastButton.layer.cornerRadius = 10
        breakfastButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        breakfastButton.backgroundColor = UIColor.blueColor()
        breakfastButton.setTitle("Breakfast Recipe", forState: UIControlState.Normal)
        breakfastButton.addTarget(self, action: "makeBreakfastRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(breakfastButton)
        
        // Set up Salad Button
        let saladButton = UIButton()
        saladButton.frame = CGRect(x: 133, y: 250, width: 110, height: 40)
        saladButton.layer.cornerRadius = 10
        saladButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        saladButton.backgroundColor = UIColor.blueColor()
        saladButton.setTitle("Salad Recipe", forState: UIControlState.Normal)
        saladButton.addTarget(self, action: "makeSaladRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(saladButton)
        
        // Set up Sandwich Button
        let sandwhichButton = UIButton()
        sandwhichButton.frame = CGRect(x: 133, y: 300, width: 110, height: 40)
        sandwhichButton.layer.cornerRadius = 10
        sandwhichButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        sandwhichButton.backgroundColor = UIColor.blueColor()
        sandwhichButton.setTitle("Sandwich Recipe", forState: UIControlState.Normal)
        sandwhichButton.addTarget(self, action: "makeSandwhichRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(sandwhichButton)
        
        // Set up Soup Button
        let soupButton = UIButton()
        soupButton.frame = CGRect(x: 133, y: 350, width: 110, height: 40)
        soupButton.layer.cornerRadius = 10
        soupButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        soupButton.backgroundColor = UIColor.blueColor()
        soupButton.setTitle("Soup Recipe", forState: UIControlState.Normal)
        soupButton.addTarget(self, action: "makeSoupRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(soupButton)
        
        // Set up Entree Button
        let entreeButton = UIButton()
        entreeButton.frame = CGRect(x: 133, y: 400, width: 110, height: 40)
        entreeButton.layer.cornerRadius = 10
        entreeButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        entreeButton.backgroundColor = UIColor.blueColor()
        entreeButton.setTitle("Entree Recipe", forState: UIControlState.Normal)
        entreeButton.addTarget(self, action: "makeEntreeRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(entreeButton)
        
        // Set up Dessert Button
        let dessertButton = UIButton()
        dessertButton.frame = CGRect(x: 133, y: 450, width: 110, height: 40)
        dessertButton.layer.cornerRadius = 10
        dessertButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        dessertButton.backgroundColor = UIColor.blueColor()
        dessertButton.setTitle("Dessert Recipe", forState: UIControlState.Normal)
        dessertButton.addTarget(self, action: "makeDessertRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(dessertButton)
        
        // Set up Drink Button
        let drinkButton = UIButton()
        drinkButton.frame = CGRect(x: 133, y: 500, width: 110, height: 40)
        drinkButton.layer.cornerRadius = 10
        drinkButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        drinkButton.backgroundColor = UIColor.blueColor()
        drinkButton.setTitle("Drink Recipe", forState: UIControlState.Normal)
        drinkButton.addTarget(self, action: "makeDrinkRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(drinkButton)
        
        // Set up Sauce Button
        let sauceButton = UIButton()
        sauceButton.frame = CGRect(x: 133, y: 550, width: 110, height: 40)
        sauceButton.layer.cornerRadius = 10
        sauceButton.titleLabel!.font =  UIFont(name: "Georgia", size: 12)
        sauceButton.backgroundColor = UIColor.blueColor()
        sauceButton.setTitle("Sauce Recipe", forState: UIControlState.Normal)
        sauceButton.addTarget(self, action: "makeSauceRecipe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(sauceButton)
        
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /***********
     These next methods are the methods called when their respective buttons are pressed and make new recipes, with the recipe type set based upon the button pressed.
     *********/
    
    func makeAppetizerRecipe (sender: UIButton!)
    {
        recipe.recipeType = "Appetizer"
        makeNewRecipe(sender)
    }
    
    func makeBreadRecipe (sender: UIButton!)
    {
        recipe.recipeType = "Bread"
        makeNewRecipe(sender)
    }
    
    func makeBreakfastRecipe (sender: UIButton!)
    {
        recipe.recipeType = "Breakfast"
        makeNewRecipe(sender)
    }
    
    func makeSaladRecipe(sender: UIButton!)
    {
        recipe.recipeType = "Salad"
        makeNewRecipe(sender)
    }
    
    func makeSandwhichRecipe(sender: UIButton!)
    {
        recipe.recipeType = "Sandwhich"
        makeNewRecipe(sender)
    }
    
    func makeSoupRecipe(sender: UIButton!)
    {
        recipe.recipeType = "Soup"
        makeNewRecipe(sender)
    }

    func makeEntreeRecipe(sender: UIButton!)
    {
        recipe.recipeType = "Entree"
        makeNewRecipe(sender)
    }
    
    func makeDessertRecipe(sender: UIButton!)
    {
        recipe.recipeType = "Dessert"
        makeNewRecipe(sender)
    }
    
    func makeDrinkRecipe(sender: UIButton!)
    {
        recipe.recipeType = "Drink"
        makeNewRecipe(sender)
    }
    
    func makeSauceRecipe(sender: UIButton!)
    {
        recipe.recipeType = "Sauce"
        makeNewRecipe(sender)
    }
    
    func goToMenuScreen (sender: UIButton!)
    {
        let menuScreen:MenuScreen = MenuScreen()
        
        self.presentViewController(menuScreen, animated: true, completion: nil)
    }
    
    /***********
     This method actually creates a new recipe. It is called by makeBlankRecipe and creates a new recipe with the type specified.
     *********/
    func makeNewRecipe(sender: UIButton!)
    {
       //let newRecipe = Recipe(recipeType: recipeType)
        //goes to next recipe screen
        let nameRecipeScreen: NameRecipeScreen = NameRecipeScreen()
        nameRecipeScreen.recipe = self.recipe

        self.presentViewController(nameRecipeScreen, animated: true, completion: nil)
    }
}
        