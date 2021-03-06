//
//  CreateViewInLoop.swift
//  SpiltUpProject
//
//  Created by Hung-Chun Tsai on 2021-01-08.
//

import SwiftUI

struct CreateViewInLoop: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0

    var body: some View {
        VStack {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
            }
            Text("You chose: Student # \(students[selectedStudent])")
        }
    }}

struct CreateViewInLoop_Previews: PreviewProvider {
    static var previews: some View {
        CreateViewInLoop()
    }
}
