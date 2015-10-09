//
//  LoginViewController.swift
//  Hands
//
//  Created by William Yu on 10/9/15.
//  Copyright © 2015 01. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleLoginWithPlayerA(sender: AnyObject) {
        LoginDataManager.defaultManager.logout()
        LoginDataManager.defaultManager.login(WithUser: UserFactory.samplePlayerA)
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    @IBAction func hanldeLoginWithPlayerB(sender: AnyObject) {
        LoginDataManager.defaultManager.logout()
        LoginDataManager.defaultManager.login(WithUser: UserFactory.samplePlayerB)
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    @IBAction func handleLogout(sender: AnyObject) {
        LoginDataManager.defaultManager.logout()
        self.navigationController?.popViewControllerAnimated(true)
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
