//
//  WorkoutListView.swift
//  DailyGrind1.1
//
//  Created by Joseph DeWeese on 7/28/24.
//

import SwiftUI

struct WorkoutListView: View {
    @State private var createNewWorkout = false
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .navigationTitle("My Workouts")
            .toolbar {
                Button(action: {
                    createNewWorkout = true
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                })
            }
            .sheet(isPresented: $createNewWorkout){
                NewWorkoutView( )
                    .presentationDetents([.medium])
            }
        }
    }
}

#Preview {
    WorkoutListView()
}
