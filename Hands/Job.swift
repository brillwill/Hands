//
//  Job.swift
//  Hands
//
//  Created by William Yu on 9/22/15.
//  Copyright © 2015 01. All rights reserved.
//

import Foundation

enum JobState {
    case JobStateInitial
    case JobStateInprogress
    case JobStateSuccess
    case JobStateFailure
    case JobStateCancel
}

class Job: NSObject {
    var title:String
    var desc:String?
    var state:JobState
    var startDate:NSDate
    var endDate:NSDate?
    var ownerID:Int?
    var originatorID:Int?
    var challengers:[Int]?
    
    var media:MediaItem?
    
    override var description : String {
        return "Job(title:\(self.title), state:\(self.state))"
    }
    
    init(title:String, withDescription desc:String) {
        self.title = title
        self.desc = desc;
        self.state = .JobStateInitial
        self.startDate = NSDate()
        super.init();
    }
    
    convenience override init() {
        self.init(title:"Blank", withDescription:"Blank description")
    }
    
}