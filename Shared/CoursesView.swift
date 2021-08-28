//
//  CoursesView.swift
//  CodeWithDesignApp (iOS)
//
//  Created by mac on 8/26/21.
//

import SwiftUI

struct CoursesView: View {
    @State var show = false // add a state to either ensure a display of the second view or not
    @Namespace var namespace // a namespace is where you set a collection of match elements
    var body: some View {
        ZStack {
            CourseItem()
                .matchedGeometryEffect(id: "Card", in: namespace, isSource: !show) //always ensure you add the ".matchedGeometryEffect" before the frame
                .frame(width: 335, height: 250)
            
            VStack {
                
                if show { // this is set to false by default and will not show by default
                    CourseItem()
                        .matchedGeometryEffect(id: "Card", in: namespace)
                        .transition(.opacity) // change this to set the direction your transition takes place from ie movement of your view
                        .edgesIgnoringSafeArea(.all)
                }
            }
       
        }
        .onTapGesture { //on tapping the card, we want a transition with animation
            
            withAnimation(.spring()){ // the spring() gives it a nice boucing effect, we set the kind of animation we want here
                
                show.toggle() // this will toggle a boolean value ie between false and true which makes the transtion occur
            }
           
        }
       // .animation(.spring())
       
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
