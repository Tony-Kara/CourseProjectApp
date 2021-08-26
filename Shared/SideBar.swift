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
            .navigationTitle("Learn")
            
            CoursesView()
        }
        
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
