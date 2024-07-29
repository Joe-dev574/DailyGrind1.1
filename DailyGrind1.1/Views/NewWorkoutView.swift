//
//  NewWorkoutView.swift
//  DailyGrind1.1
//
//  Created by Joseph DeWeese on 7/28/24.
//

import SwiftUI

struct NewWorkoutView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    @State private var title = ""
    @State private var subTitle = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Workout Details")) {
                    TextField("Title", text: $title)
                        .padding(.horizontal)
                    TextField("Description", text: $subTitle)
                        .padding(.horizontal)
                    Button("Create") {
                        let newWorkout = DailyWorkout(title: title, subTitle: subTitle)
                        context.insert(newWorkout)
                        dismiss()
                    }
                    .disabled(title.isEmpty || subTitle.isEmpty)
                }
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .buttonStyle(.bordered)
            .padding(.vertical)
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
        }
        }
    }
}
#Preview {
    NewWorkoutView()
}
