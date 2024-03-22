//
//  ServiceTrackerApp.swift
//  ServiceTracker
//
//  Created by Timothy Bryant on 3/22/24.
//

import SwiftData
import SwiftUI

@main
struct ServiceTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}

// Push Notifications
// iCloud Support
// Sharing
