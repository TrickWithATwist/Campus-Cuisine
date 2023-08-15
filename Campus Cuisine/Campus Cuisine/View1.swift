//
//  View1.swift
//  Campus Cuisine
//
//

import SwiftUI


//creating struct to store attributes for
//indexes of catagory arrays
/* There will be three structs, each struct will be for
 each horizontal scrolling section of the homescreen.
 Categories, Cultures, and By Food*/
struct Category: Identifiable
{
    var id: String = UUID().uuidString
    var title: String
}
//array with info to be displayed for "Categories"
var categories =
[
    Category(title: "Asian 🌏"),
    Category(title: "Sandwiches 🥪"),
    Category(title: "Seafood 🐟"),
    Category(title: "Pizza 🍕"),
    Category(title: "Italian 🍝"),
    Category(title: "Wings 🍗"),
    Category(title: "Fast Food 🍟"),
    Category(title: "Mexican 🇲🇽"),
    Category(title: "Dessert 🍦"),
    Category(title: "American 🇺🇸"),
    Category(title: "Breakfast 🧇"),
    Category(title: "Mediterranean 🥙"),
    Category(title: "Burgers 🍔")
]


struct View1: View {
    var body: some View
    {
        /* establishing navigation view and hiding the bar using a modifier*/
        NavigationView
        {
            /* adding background by establishing a color and having it be overlayed over all the other content on the view*/
            Color.black.ignoresSafeArea().overlay(
                //content that the color is overlaying
                
                // Vertical Stack holding contents of Home Screen
                VStack
                {
                    /* creating navigation link between home view and see all view*/
                    //destination is temporary
                    NavigationLink(destination: SeeAllView(), label:{
                        Label("", systemImage: "gearshape").foregroundColor(.white)
                    })
                    
                    
                    // "Categories" title and "See All"
                    HStack
                    {
                        //adding text for view
                        /* using modifiers to increase text size and color*/
                        Text("Categories").foregroundColor(.white).font(.system(size: 40)).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        
                        /* creating navigation link between home view and see all view*/
                        NavigationLink("See all", destination: SeeAllView()).foregroundColor(.white).font(.system(size: 25)).frame(maxWidth: .infinity, maxHeight: 670, alignment: .topTrailing)
                    }
                    
                    HStack
                    {
                        NavigationLink(destination: SeeAllView(), label:{
                            Label("", systemImage: "fork.knife")
                                .foregroundColor(.white)
                                .padding(70)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .bold()
                        
                        })
                        // Dine In Button
                        Button(action: { }, label: {
                            Text("Dine In")
                                .padding(70)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        })
                    }
                    
                    // "Cultures" title
                    HStack
                    {
                        Text("Cultures").foregroundColor(.white).font(.system(size: 40)).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    }
                    
                    HStack
                    {
                        // Asian Button
                        Button(action: { }, label: {
                            Text("Asian")
                                .padding(70)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        })
                        // Italian Button
                        Button(action: { }, label: {
                            Text("Italian")
                                .padding(70)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        })
                    }
                    
                    // "By Food" title
                    HStack
                    {
                        Text("By Food").foregroundColor(.white).font(.system(size: 40)).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    }
                    
                    HStack
                    {
                        // Pizza Button
                        Button(action: { }, label: {
                            Text("Pizza")
                                .padding(70)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        })
                        // Tacos Button
                        Button(action: { }, label: {
                            Text("Tacos")
                                .padding(70)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        })
                    }
                    
                })
        }.navigationBarHidden(true)
    }
    
    /* establishing extra view for the "See All" screen*/
    struct SeeAllView: View {
        var body: some View
        {
            Color.black.ignoresSafeArea().overlay(
                HStack
                {
                    Text("See all screen").foregroundColor(.white)
                })
        }
    }
    
    struct View1_Previews: PreviewProvider {
        static var previews: some View {
            View1()
        }
    }
}
