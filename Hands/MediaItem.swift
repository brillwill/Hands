//
//  MediaItem.swift
//  Hands
//
//  Created by William Yu on 9/23/15.
//  Copyright © 2015 01. All rights reserved.
//

import Foundation

enum MediaItemType {
    case MediaItemTypePhoto
    case MediaItemTypeAudio
    case MediaItemTypeVideo
}

class MediaItem: NSObject {
    var name:String
    var type:MediaItemType
    var filePath:String?
    
    init(name:String, type:MediaItemType) {
        self.name = name
        self.type = type
        
        super.init()
    }
}