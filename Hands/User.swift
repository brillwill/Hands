//
//  User.swift
//  Hands
//
//  Created by William Yu on 9/23/15.
//  Copyright © 2015 01. All rights reserved.
//

import Foundation

class User: NSObject {
    static var idCount = 0;
    static func uniqueID()->Int {
        return ++User.idCount;
    }
    
    var userID:Int
    var name:String?
    var sex:Bool
    
    init(withID userID:Int, name:String, sex:Bool ) {
        self.userID = userID
        self.name = name
        self.sex = true
        
        super.init();
    }
    
    convenience override init() {
        self.init(withID:User.uniqueID(), name:"User", sex:true)
    }
}

class UserFactory {
    static var samplePlayerA = User(withID: 1, name:"Player A", sex: true)
    static var samplePlayerB = User(withID: 2, name: "Player B", sex: false)
    
}