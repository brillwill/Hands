//
//  SettingViewController.swift
//  Hands
//
//  Created by William Yu on 9/28/15.
//  Copyright © 2015 01. All rights reserved.
//

import UIKit

class SettingViewController: UITableViewController {

    @IBOutlet weak var loginLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let userName = LoginDataManager.defaultManager.currentUser?.name {
            loginLabel.text = "Current User : " + userName
        }
        else {
            loginLabel.text = "Login"
        }
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
