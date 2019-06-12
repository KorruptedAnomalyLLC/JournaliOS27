//
//  EntryController.swift
//  JournaliOS27
//
//  Created by Austin West on 6/12/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class EntryController {
    
    static let shared = EntryController()
    
    var entries = [Entry]()
    
    
    func addEntryWith(title: String, text: String ) {
        
        let entry = Entry(title: title, bodyText: text)
        entries.append(entry)
    }
    
    func remove(entry: Entry) {
    
        if let entryIndex = entries.firstIndex(of: entry) {
            entries.remove(at: entryIndex)
        }
    }
    
    func update(entry: Entry, with title: String, text: String) {
        
        entry.title = title
        entry.bodyText = text
    }
    
    
}
