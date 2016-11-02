//
//  HomeViewController.swift
//  DontForgetThe
//
//  Created by Robert Martin on 9/1/16.
//  Copyright © 2016 Robert Martin. All rights reserved.
// an app for reminding you what you may have forgotten to buy...BEFORE you leave the 
// grocery store!

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var foodTableView: UITableView!
    
    
    let myData = [
        "BBQ Sauce",
        "Honey",
        "Horseradish",
        "Jelly",
        "Ketchup",
        "Mayonnaise",
        "Mustard",
        "Peanut Butter",
        "Salsa",
        "Soy Sauce",
        "Syrup",
        "eggs",
        "bread",
        "milk",
        "ground beef",
        "bananas",
        "bacon",
        "batteries",
        "salt",
        "butter",
        "cheese",
        "paper towels",
        "soap",
        "baking powder"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = foodTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = myData[indexPath.row]
        return cell
    }
    
    // From UITableViewDelegate protocol.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("User selected section: \(indexPath.section), row: \(indexPath.row)")
        
        // The user has tapped or selected a row in our table view - manually fire our
        // named Segue.
        performSegue(withIdentifier: "mySegue", sender: tableView)
    }
    
    // We can override this method in UIViewController if we want to perform some
    // logic before a Segue actually fires off.
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        
        if segue.identifier == "mySegue" {
            
            print("Preparing for mySegue!")
            
            // Ask the table view what row is currenlty selected.
            let indexPath: IndexPath = self.foodTableView.indexPathForSelectedRow!
            
            print("User selected section: \(indexPath.section), row: \(indexPath.row)")
            
            let secondVC = segue.destination as! ForgottenViewController
            
            // Pass some data to the next View Controller by setting one or more of
            // its properties.
            secondVC.textData = myData[indexPath.row]
        }
    }


}

