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
            TabBarView()
        }
        .modelContainer(for: Service.self)
    }
}

// Push Notifications
// iCloud Support
// Sharing
