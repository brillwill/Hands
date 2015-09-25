//
//  TestStub.swift
//  Hands
//
//  Created by William Yu on 9/23/15.
//  Copyright © 2015 01. All rights reserved.
//

import Foundation

class TestStub {
    static func testMain() {
        let job1 = Job(title: "Math resolve", withDescription: "Help to resolve this math problem.")
        let job2 = Job(title: "Art Question", withDescription: "Do you know Da Fenchi")
        let job3 = Job()
        
//        job2.state = .JobStateInprogress
        
        JobManager.sharedManager.addJob(job1)
        JobManager.sharedManager.addJob(job3)
        
//        print("JobM count = \(JobManager.sharedManager.records.count): \(JobManager.sharedManager.records)")
        
        JobManager.sharedManager.addJob(job2)
        
        print("waitingJobs=\(JobManager.sharedManager.jobsInWaiting)")
        
    }
}