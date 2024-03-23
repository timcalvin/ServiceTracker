//
//  ContentView.swift
//  ServiceTracker
//
//  Created by Timothy Bryant on 3/22/24.
//

import SwiftUI

enum Tabs {
    case services
    case plugins
    case users
    case settings
}

struct TabBarView: View {
    @State private var currentTab = Tabs.services
    
    var body: some View {
        TabView(selection: $currentTab) {
            ServicesView()
                .tabItem {
                    Image(systemName: "scroll.fill")
                    Text("Services")
                }
                .tag(Tabs.services)
            
            PluginsView()
                .tabItem {
                    Image(systemName: "puzzlepiece.fill")
                    Text("Plug-Ins")
                }
                .tag(Tabs.plugins)
            
            UsersView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Users")
                }
                .tag(Tabs.users)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(Tabs.settings)
        }
    }
}

#Preview {
    TabBarView()
}
