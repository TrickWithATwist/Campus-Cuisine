//
//  ContentView.swift
//  Campus Cuisine
//
//  //

import SwiftUI

struct ContentView: View {
    var body: some View
    {
        /* Establishing the tab bar and essential attributes of it*/
        TabView()
        {
            //establishing tab items
            /* Each tab item name is printed and the other details such as icons and other attributes are added in as modifiers*/
            //home
            Text("Home").tabItem()
            {
                Label("Home", systemImage: "house")
            }
            //search
            View2().tabItem()
            {
                Label("Search", systemImage: "fork.knife.circle")
            }
            //map
            Text("Map").tabItem()
            {
                Label("Map", systemImage: "map")
            }
            //Star
            Text("Star").tabItem()
            {
                Label("Favorites", systemImage: "star")
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
