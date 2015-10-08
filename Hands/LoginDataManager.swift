//
//  LoginDataManager.swift
//  Hands
//
//  Created by William Yu on 9/28/15.
//  Copyright © 2015 01. All rights reserved.
//

import UIKit

class LoginDataManager: NSObject {
    static var defaultManager = LoginDataManager()
    
    var currentUser:User?
    
    override init(){
        
    }
    
    func login(WithUser user : User) {
        currentUser = user;
    }
    
    func logout() {
        currentUser = nil;
    }
    
    func isLogin()->Bool {
        return currentUser != .None
    }
}
