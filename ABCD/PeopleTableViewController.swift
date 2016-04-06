//
//  PeopleTableViewController.swift
//  ABCD
//
//  Created by John Russell on 3/24/16.
//  Copyright © 2016 John Russell. All rights reserved.
//

import UIKit
import SwiftyJSON

class PeopleTableViewController: UITableViewController {

    let jsonData = JSON(data: "[{\"id\":0,\"first_name\":\"John\",\"last_name\":\"Doe\",\"current_group\":0},{\"id\":1,\"first_name\":\"Jane\",\"last_name\":\"Doe\",\"current_group\":1},{\"id\":2,\"first_name\":\"Hillary\",\"last_name\":\"Clinton\",\"current_group\":2},{\"id\":3,\"first_name\":\"Donald\",\"last_name\":\"Trump\",\"current_group\":0},{\"id\":4,\"first_name\":\"Bernie\",\"last_name\":\"Sanders\",\"current_group\":1}]".dataUsingEncoding(NSUTF8StringEncoding)!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jsonData.arrayValue.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let rowNumber: Int = indexPath.row    // Identify the row number

        let cell = tableView.dequeueReusableCellWithIdentifier("personCell", forIndexPath: indexPath)

        let nameLastFirst = jsonData[rowNumber]["last_name"].stringValue + " " + jsonData[rowNumber]["first_name"].stringValue
        let currentGroup = "Current Group: " + jsonData[rowNumber]["current_group"].stringValue
        
        cell.textLabel!.text = nameLastFirst
        cell.detailTextLabel!.text = currentGroup

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
