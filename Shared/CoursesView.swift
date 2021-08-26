//
//  CoursesView.swift
//  CodeWithDesignApp (iOS)
//
//  Created by mac on 8/26/21.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        List(0 ..< 20) { item in
            CourseRow() //Embed in list to create the list and add the .liststyle
        }
        .listStyle(InsetGroupedListStyle()) // This will give different styles for the list view
        .navigationTitle("Courses")
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}