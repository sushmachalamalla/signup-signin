//
//  hometest.swift
//  selfie
//
//  Created by Sushma Reddy on 4/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

import UIKit

class hometest: PFQueryTableViewController {
    // Initialise the PFQueryTable tableview
    override init!(style: UITableViewStyle, className: String!) {
        super.init(style: style, className: className)
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Configure the PFQueryTableView
        self.parseClassName = "Ride"
        self.textKey = "Message"
        self.pullToRefreshEnabled = true
        self.paginationEnabled = false
    }
    
    /*override func queryForTable() -> PFQuery! {
        var query = PFQuery(className: "Ride")
        query.orderByAscending("Message")
                return query
    }*/
    
    //override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath, object: PFObject) -> PFTableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("MyCell") as PFTableViewCell!
        if cell == nil {
            cell = PFTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        }
        
        // Extract values from the PFObject to display in the table cell
        if let message = object["Message"] as? String {
            cell?.textLabel?.text = message
        }
      /*  if let to = object["To"] as? String {
            cell?.detailTextLabel?.text = to
        }
        */
        return cell
    }
    
    
    @IBAction func logoutButton(sender: AnyObject) {
        PFUser.logOut()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("ViewController") as UIViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    
   // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Get the new view controller using [segue destinationViewController].
        var detailScene = segue.destinationViewController as DetailViewController
        
        // Pass the selected object to the destination view controller.
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let row = Int(indexPath.row)
            detailScene.currentObject = objects[row] as? PFObject
        }
    }
}
