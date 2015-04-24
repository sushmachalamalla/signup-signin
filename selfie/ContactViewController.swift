//
//  ContactViewController.swift
//  selfie
//
//  Created by Sushma Reddy on 4/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
     var currentObject : PFObject?
   
    @IBOutlet var feedback: UITextField!
    
    
    @IBAction func saveButton(sender: AnyObject) {
        
       
        // Unwrap the current object object
        /*if let object = currentObject {
            
            object["Feedback"] = feedback.text
                        
            // Save the data back to the server in a background task
            object.saveEventually(nil)
            
        }*/

        
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
