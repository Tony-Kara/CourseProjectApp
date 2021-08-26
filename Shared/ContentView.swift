//
//  ContentView.swift
//  Shared
//
//  Created by mac on 8/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer() // this spacer pushed the image down
            HStack {
                Spacer()
                Image("Illustration 1")
                    .resizable() // will ensure the image uses all available space
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text("SwiftUI for iOS 14")
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                
            Text("20 sections")
                .font(.footnote)
                .foregroundColor(Color.white)
                
                
        }
        .padding(.all)
        .background(Color.blue)
        .cornerRadius(20.0)
        .shadow(radius: 10)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/))
                .preferredColorScheme(.dark)
        }
    }
}
