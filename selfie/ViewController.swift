//
//  ViewController.swift
//  selfie
//
//  Created by Sushma Reddy on 4/14/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
    
    
    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var messageLabel: UILabel!

   
    
    
    @IBAction func loginVerifyButton(sender: AnyObject) {
        var usrEntered = usernameTextField.text
        var pwdEntered = passwordTextField.text
        var emlEntered = emailTextField.text
        
        //parse function
        func userSignUp() {
            var user = PFUser()
            user.username = usrEntered
            user.password = pwdEntered
            user.email = emlEntered
          
            
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool!, error: NSError!) -> Void in
                if error == nil {
                    // Hooray! Let them use the app now.
                    self.messageLabel.text = "User Signed Up";
                } else {
                    // Show the errorString somewhere and let the user try again.
                }
            }

        }
        
        if usrEntered != "" && pwdEntered != "" && emlEntered != "" {
            // If not empty then yay, do something
           
            userSignUp()
            
        } else {
            self.messageLabel.text = "All Fields Required"
        }
           
    
    }
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

