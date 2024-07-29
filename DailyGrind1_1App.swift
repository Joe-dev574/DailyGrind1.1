//
//  DailyGrind1_1App.swift
//  DailyGrind1.1
//
//  Created by Joseph DeWeese on 7/28/24.
//

import SwiftUI
import SwiftData


@main
struct DailyGrind1_1App: App {
    var body: some Scene {
        WindowGroup {
            WorkoutListView()
        }
        .modelContainer(for: DailyWorkout.self)
    }
    
    init( ) {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
