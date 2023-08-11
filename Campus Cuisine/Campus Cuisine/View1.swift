//
//  View1.swift
//  Campus Cuisine
//
//

import SwiftUI

struct View1: View {
    var body: some View
    {
        /* adding background by establishing a color and having it be overlayed over all the other content on the view*/
        Color.black.ignoresSafeArea().overlay(
        //content that the color is overlaying
        VStack
        {
            //adding text for view
            /* using modifiers to increase text size and color*/
            Text("Categories").foregroundColor(.white).font(.system(size: 40)).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        })
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
