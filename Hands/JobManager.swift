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
        
    }
    
}