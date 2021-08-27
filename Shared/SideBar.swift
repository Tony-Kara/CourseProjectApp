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
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "person.crop.circle")
                    }
                
                }
            #else
            content
                .frame(minWidth: 200, idealWidth: 250, maxWidth: .infinity, maxHeight: .infinity)// put in mind, it makes no sense to put in fix width and height for iOS and iPad as they adjust dynamically.
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        
                        Button(action: {}){
                            Image(systemName: "person.crop.circle")
                        }
                        
                         
                        
                    }
                    
                  
                }
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
