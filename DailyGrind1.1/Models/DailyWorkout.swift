//
//  DailyWorkout.swift
//  DailyGrind1.1
//
//  Created by Joseph DeWeese on 7/28/24.
//

import Foundation
import SwiftData


@Model
class DailyWorkout {
 
    var title: String
    var subTitle: String
    var rating: Int?
    var workoutType: WorkoutType
 
    
    init(
        title: String,
        subTitle: String,
        rating: Int? = nil,
        workoutType: WorkoutType = .Base
    ) {
        self.title = title
        self.subTitle = subTitle
        self.rating = rating
        self.workoutType = workoutType
    }
}
enum WorkoutType: Int, Codable, Identifiable, CaseIterable {
    case Yoga, Strength, Stretch, Walking, Cardio, Power, Grappling, HIIT, Running, Swimming, Cycling, Base, Recovery
    var id: Self {
        self
    }
    var descr: String {
        switch self {
        case .Base:
            "Base"
        case .Cardio:
            "Cardio"
        case .Cycling:
            "Cycling"
        case .Grappling:
            "Grappling"
        case .HIIT:
            "HIIT"
        case .Power:
            "Power"
        case .Recovery:
            "Recovery"
        case .Running:
            "Running"
        case .Strength:
            "Strength"
        case .Stretch:
            "Stretch"
        case .Swimming:
            "Swimming"
        case .Walking:
            "Walking"
        case .Yoga:
            "Yoga"
            
        }
    }
}

