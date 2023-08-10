//
//  ContentView.swift
//  Campus Cuisine
//
//  //

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*creating button to go to other view file
         by establishing NavigationView and setting
         up button properities*/
        NavigationView
        {
            VStack()
            {
                /*Creating butto with string protocal
                 "Search." When it is tapped the
                 view will change to View 2*/
                NavigationLink("Tap for screen 2")
                {
                    View2()
                }
                
                //printing text to label screen
                //temp for dev
                Text("this is screen 1")
            }.padding(.all).background(Color.red)
                .toolbar
            {
                /* Established toolbar attribute to the V stack and Created list of items and the brakckets of each item contain their attributes i.e. Image appearance, etc*/
                ToolbarItem(placement: .bottomBar)
                {
                    Image(systemName: "gear")
                        .frame(alignment: .bottomTrailing)
                }
            }
            //temporarly adding padding and color
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
