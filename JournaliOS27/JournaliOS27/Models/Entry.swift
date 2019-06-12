//
//  Entry.swift
//  JournaliOS27
//
//  Created by Austin West on 6/12/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class Entry: Equatable, Codable {
    
    var timestamp = Date()
    var title: String
    var bodyText: String
    
    
    
    init(timestamp: Date = Date(), title: String, bodyText: String) {
        self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
    }
    
}


func == (lhs: Entry, rhs: Entry) -> Bool {
    if lhs.timestamp != rhs.timestamp { return false }
    if lhs.title != rhs.title { return false }
    if lhs.bodyText != rhs.bodyText { return false }
    
    return true
}
