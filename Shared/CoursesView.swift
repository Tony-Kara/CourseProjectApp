//
//  CoursesView.swift
//  CodeWithDesignApp (iOS)
//
//  Created by mac on 8/26/21.
//

import SwiftUI

struct CoursesView: View {
    @ViewBuilder // this is used to allow setup for Mac and iOS to run
    var body: some View {
        #if os(iOS)// everything between here and #else will be for the iOS codes
        content
            .listStyle(InsetGroupedListStyle()) // This will give different styles for the list view
        #else // everything within here and #endif will be for the Mac codes
        
        content
            .frame(minWidth: 800,  minHeight: 600) // it is very important to set minWidth and minHeight for all Mac targets views to ensure contents are always displayed in full screen and contents do not become tiny.
        #endif
    }
    
    var content: some View{
        List(0 ..< 20) { item in
            CourseRow() //Embed in list to create the list and add the .liststyle
        }
      .navigationTitle("Courses")
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
