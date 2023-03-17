//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Alex Hewitt on 3/13/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
