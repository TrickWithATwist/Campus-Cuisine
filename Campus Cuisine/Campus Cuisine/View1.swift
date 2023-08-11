//
//  View1.swift
//  Campus Cuisine
//
//

import SwiftUI

struct View1: View {
    var body: some View
    {
        /* establishing navigation view and hiding the bar using a modifier*/
        NavigationView
        {
            /* adding background by establishing a color and having it be overlayed over all the other content on the view*/
            Color.black.ignoresSafeArea().overlay(
                //content that the color is overlaying
                VStack
                {
                    //adding text for view
                    /* using modifiers to increase text size and color*/
                    Text("Categories").foregroundColor(.white).font(.system(size: 40)).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    /* creating navigation link between home view and see all view*/
                    NavigationLink("See all", destination: SeeAllView()).foregroundColor(.white).font(.system(size: 25)).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                })
        }.navigationBarHidden(true) //bar is hidden
    }
}

/* establishing extra view for the "See All" screen*/
struct SeeAllView: View {
    var body: some View
    {
        Text("See all screen")
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
