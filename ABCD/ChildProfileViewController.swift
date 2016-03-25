//
//  ChildProfileViewController.swift
//  ABCD
//
//  Created by John Russell on 3/24/16.
//  Copyright © 2016 John Russell. All rights reserved.
//

import UIKit

class ChildProfileViewController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var childStatus: UILabel!
    @IBOutlet var childAge: UILabel!
    @IBOutlet var childGender: UILabel!
    @IBOutlet var childProfilePicture: UIImageView!
    @IBOutlet var tagsTableViewCell: UITableViewCell!
    @IBOutlet var tagsTableView: UITableView!
    @IBOutlet var eventsTableViewCell: UITableViewCell!
    @IBOutlet var eventsTableView: UITableView!
    
    @IBOutlet var infoTextView: UITextView!
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
