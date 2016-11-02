//
//  ForgottenViewController.swift
//  DontForgetThe
//
//  Created by Robert Martin on 9/1/16.
//  Copyright © 2016 Robert Martin. All rights reserved.
//

import UIKit

class ForgottenViewController: UIViewController {
    
    var textData: String = ""

    @IBOutlet weak var forgottenGroceryItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        forgottenGroceryItem.text? = textData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
