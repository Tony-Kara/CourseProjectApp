//
//  ContentView.swift
//  Shared
//
//  Created by mac on 8/26/21.
//

import SwiftUI

struct ContentView: View {
    @ViewBuilder
    var body: some View {
       
        #if os(iOS)
        SideBar()
        #else
        SideBar()
            .frame(minWidth: 1000 , minHeight: 600) // recommmended to put a minimum width for the entire Mac app here
        #endif
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
           
        }
    }
}
