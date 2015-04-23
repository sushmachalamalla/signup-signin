//
//  detailViewController.swift
//  selfie
//
//  Created by Sushma Reddy on 4/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var currentObject : PFObject?
    
    @IBOutlet var To: UITextField!
    
    @IBOutlet var From: UITextField!
    // Container to store the view table selected object
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Unwrap the current object object
        if let object = currentObject {
          // nameEnglish.text = object["nameEnglish"] as! String
           //nameLocal.text = object["nameLocal"] as! String
            To.text = object["To"] as String
            From.text = object["From"] as String
        }
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
