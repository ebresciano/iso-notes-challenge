//
//  Entry.swift
//  Notes
//
//  Created by Eva Marie Bresciano on 5/13/16.
//  Copyright © 2016 Module 9. All rights reserved.
//

import Foundation

class Entry: Equatable {
    var title: String
    var bodyText: String
    var timeStamp: NSDate
    
    init(title: String, bodyText: String, timeStamp: NSDate){
        self.title = title
        self.bodyText = bodyText
        self.timeStamp = timeStamp
    }
    
}

func == (lhs: Entry, rhs: Entry) -> Bool {
    return lhs.title == rhs.title && lhs.bodyText == rhs.bodyText && lhs.timeStamp == rhs.timeStamp
}

