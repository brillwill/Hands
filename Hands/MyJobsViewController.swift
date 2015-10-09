//
//  MyJobsViewController
//  Hands
//
//  Created by William Yu on 9/22/15.
//  Copyright © 2015 01. All rights reserved.
//

import UIKit

class MyJobsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var myJobs:[Job]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myJobs = Array<Job>()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let user = LoginDataManager.defaultManager.currentUser {
            myJobs = JobManager.sharedManager.jobsOwnedBy(user)
            
            tableView.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myJobs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let job = myJobs[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myJobCell")
        cell?.textLabel?.text = job.title;
        cell?.detailTextLabel?.text = job.desc;
        
        return cell!;
    }
    
}

