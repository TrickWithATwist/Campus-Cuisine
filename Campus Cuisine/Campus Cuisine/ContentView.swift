//
//  ContentView.swift
//  Campus Cuisine
//
//  //

import SwiftUI

struct ContentView: View {
    var body: some View
    {
        //creating mutuable variable selection for tab
        @State var selection = "home"
        /*this allows tabview content $selection to be in scope*/
        /* Establishing the tab bar and essential attributes of it*/
        TabView()
        {
            //establishing tab items
            /* Each tab item name is printed and the other details such as icons and other attributes are added in as modifiers*/
            Text("Home").tabItem()
            {
                Label("Home", systemImage: "house")
            }
            Text("Search").tabItem()
            {
                Label("Search", systemImage: "fork.knife.circle")
            }
            
        }

        Text("hello")
        
    }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
