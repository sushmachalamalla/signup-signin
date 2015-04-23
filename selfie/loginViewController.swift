//
//  loginViewController.swift
//  selfie
//
//  Created by Sushma Reddy on 4/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    
    @IBOutlet var loginUsername: UITextField!
    
    @IBOutlet var loginPassword: UITextField!
    
    @IBOutlet var loginInitialLabel: UILabel!
    
    @IBAction func loginButton(sender: AnyObject) {
        
        if loginUsername.text != "" && loginPassword.text != "" {
            // Not Empty, Do something.
        } else {
            // Empty, Notify user
            self.loginInitialLabel.text = "All Fields Required"
        }
        
        PFUser.logInWithUsernameInBackground(loginUsername.text, password:loginPassword.text) {
            (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                // Yes, User Exists
                self.loginInitialLabel.text = "User Exists"
                /*dispatch_async(dispatch_get_main_queue()) {
                    self.performSegueWithIdentifier("homeSegue", sender: self)
               }*/

                
            } else {
                // No, User Doesn't Exist
                self.loginInitialLabel.text = "Enter Valid Credentials"
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
