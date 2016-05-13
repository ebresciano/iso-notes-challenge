//
//  EntryController.swift
//  Notes
//
//  Created by Eva Marie Bresciano on 5/13/16.
//  Copyright © 2016 Module 9. All rights reserved.
//

import Foundation

class EntryController {
    static let sharedController = EntryController()
    
    var entriesArray:[Entry]
    
    init(){
        entriesArray = []
    }
    func addEntry(entry: Entry) {
        entriesArray.append(entry)
    }


    func removeEntry(entry: Entry) {
        if let indexOfEntry = entriesArray.indexOf(entry){
            entriesArray.removeAtIndex(indexOfEntry)
        }
    }


}



