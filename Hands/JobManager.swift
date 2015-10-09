//
//  JobManager.swift
//  Hands
//
//  Created by William Yu on 9/22/15.
//  Copyright © 2015 01. All rights reserved.
//

import Foundation

class JobManager: NSObject {
    static let sharedManager = JobManager()
    var records:[Job]
    
    override init() {
        self.records = Array<Job>()
        
        super.init()
        
        self.loadSampleData()
    }
    
    var jobsInWaiting:Array<Job> {
        get {
            return self.records.filter({$0.state == JobState.JobStateInitial})
        }
    }
    
    func jobsOwnedBy(user:User) -> [Job]? {
        return self.records.filter({$0.ownerID == user.userID})
    }
    
    
    func addJob(job:Job) {
        self.records.append(job);
    }
    
    func removeJob(job:Job) -> Bool {
        if let index = self.records.indexOf(job) {
            self.records.removeAtIndex(index)
            
            return true
        }
        return false
    }
    
    func loadSampleData(){
        let dateComponent = NSDateComponents()
        dateComponent.year = 2015
        dateComponent.month = 9
        dateComponent.day = 12
        
        let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierChinese)
        let date:NSDate = (calendar?.dateFromComponents(dateComponent))!
        
        let job = Job(title: "Clean", withDescription: "clean up the undergroudn floor")
        job.startDate = date
        job.ownerID = -1
        job.state = .JobStateInprogress
        addJob(job)
        
        let job2 = Job(title: "Dry", withDescription: "Dry my T shirt in the bedroom")
        job2.startDate = NSDate()
        job2.state = .JobStateInitial
        addJob(job2)
        
        let job3 = Job(title: "Homework", withDescription: "Do math calculation ex")
        job3.state = .JobStateInprogress
        job3.ownerID = 2
        addJob(job3)
        
        let job4 = Job(title: "Homework", withDescription: "Do physics problem solving")
        job4.state = .JobStateInprogress
        job4.ownerID = 1
        addJob(job4)
        
        let job5 = Job(title: "Photo Beatify", withDescription: "I have 3 pictures to beatify in the albumn")
        addJob(job5)
        
        let job6 = Job(title: "Photo Beatify", withDescription: "I have 1 pictures to beatify in the house")
        job6.startDate = date
        job6.endDate = NSDate()
        addJob(job6)
        
        let job7 = Job(title: "Mail", withDescription: "I have 1 mail to pick up in the office")
        job7.startDate = date
        job7.endDate = date
        job7.ownerID = 1
        addJob(job7)
        
    }
    
}