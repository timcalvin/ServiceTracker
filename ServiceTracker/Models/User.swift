//
//  User.swift
//  ServiceTracker
//
//  Created by Timothy Bryant on 3/22/24.
//

import Foundation
import SwiftData

@Model
class User {
    let id = UUID()
    var nameFirst: String = ""
    var nameLast: String = ""
    var services: [Service] = []
    
    init(nameFirst: String, nameLast: String) {
        self.nameFirst = nameFirst
        self.nameLast = nameLast
    }
}

// NOTES: - Potentiall add the following fields in future version
//          1. Organization
//          2. Supervisor
//          3. Photo
