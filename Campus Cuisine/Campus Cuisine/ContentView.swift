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
            View1().tabItem()
            {
                Label("Home", systemImage: "house")
            }
            //search
            View2().tabItem()
            {
                Label("Search", systemImage: "fork.knife.circle")
            }
            //map
            View3().tabItem()
            {
                Label("Map", systemImage: "map")
            }
            //Star
            View4().tabItem()
            {
                Label("Favorites", systemImage: "star")
            }
            /* Essentially what this tab view is doing is allowing us to add modifiers to the other view files so that we can access them by icons with subtitles, the content view will essentially be the viewer for everything because it will project other screens if that makes sense*/
            
        }

        //Text("hello")
        
    }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
