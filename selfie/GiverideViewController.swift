//
//  GiverideViewController.swift
//  selfie
//
//  Created by Sushma Reddy on 4/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

import UIKit

class GiverideViewController: UIViewController {
    
    @IBOutlet var initialLabel: UILabel!
    
    @IBOutlet var toField: UITextField!
    
    
    @IBOutlet var fromField: UITextField!
    
    
    @IBOutlet var messageField: UITextField!
    
    
    @IBAction func ridesaveButton(sender: AnyObject) {
        
        var giveride = PFObject(className:"Ride")
       // object["Feedback"] = feedback.text
        giveride["To"] = toField.text
        giveride["From"] = fromField.text
        giveride["Message"] = messageField.text
        giveride.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                // The object has been saved.
                self.initialLabel.text = "Saved";
            } else {
                // There was a problem, check error.description
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
