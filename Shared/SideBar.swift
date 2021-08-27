//
//  SideBar.swift
//  CodeWithDesignApp (iOS)
//
//  Created by mac on 8/26/21.
//

import SwiftUI

struct SideBar: View {
    var body: some View {
       
        NavigationView { // creates a navigattion view
            #if os(iOS)
            content
                .navigationTitle("Learn") // the navigation title is only appropriate for iOS and not mac
            #else
            content
                .frame(minWidth: 200, idealWidth: 250, maxWidth: .infinity, maxHeight: .infinity)
            #endif
            
            CoursesView() // adding this here ensures that my view displays these  contents  on first loading up.
        }
        
    }
    
    var content: some View {
        List {
            NavigationLink(destination: CoursesView()) {
                Label("Courses", systemImage: "book.closed")
            }
            Label("Tutorials", systemImage: "list.bullet.rectangle")
            Label("Livestreams", systemImage: "tv")
            Label("Certificates", systemImage: "mail.stack")
            Label("Search", systemImage: "magnifyingglass")
        }
        .listStyle(SidebarListStyle())
        
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
