//
//  View2.swift
//  Campus Cuisine
//
//  //

import SwiftUI

struct View2: View {
    var body: some View
    {
        /*creating button to go to other view file
         by establishing NavigationView and setting
         up button properities*/
            VStack()
            {
                /*Creating butto with string protocal
                 "Search." When it is tapped the
                 view will change to View 2*/
                NavigationLink("Tap for screen 3")
                {
                    View3()
                }
                
                //printing text to label screen
                //temp for dev
                Text("this is screen 2")
            }.padding(.all).background(Color.green)
            //temporarly adding padding and color
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
