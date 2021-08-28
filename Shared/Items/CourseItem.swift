//
//  CourseItem.swift
//  CodeWithDesignApp (iOS)
//
//  Created by mac on 8/28/21.
//

import SwiftUI

struct CourseItem: View {
    var course: Course = courses[0] // this is my model
    var body: some View {
        
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer() // this spacer pushed the image down
            HStack {
                Spacer()
                Image(course.image)
                    .resizable() // will ensure the image uses all available space
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text(course.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                
            Text(course.subtitle)
                .font(.footnote)
                .foregroundColor(Color.white)
                
                
        }
        .padding(.all)
        .background(course.color)
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: course.color.opacity(0.3), radius: 20, x: 0, y: 10 )
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem()
    }
}
