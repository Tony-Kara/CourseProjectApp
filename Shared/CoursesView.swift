//
//  CoursesView.swift
//  CodeWithDesignApp (iOS)
//
//  Created by mac on 8/26/21.
//

import SwiftUI

struct CoursesView: View {
    @State var show = false // add a state to either ensure a display of the second view or not
    var body: some View {
        ZStack {
            CourseItem()
                .frame(width: 335, height: 250)
            
            if show { // this is set to false by default and will not show by default
                CourseItem()
            }
        }
        .onTapGesture {
            show.toggle() // this will toggle a boolean value ie between false and true
        }
        .animation(.easeIn)
       
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
