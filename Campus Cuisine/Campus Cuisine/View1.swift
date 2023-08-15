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
//array for cultures
var cultures =
[
    Category(title: "Asian 🌏"),
    Category(title: "Italian 🍝"),
    Category(title: "American 🇺🇸"),
    Category(title: "Mediterranean 🥙")
]
//array for food
var food =
[
    Category(title: "Sandwiches 🥪"),
    Category(title: "Seafood 🐟"),
    Category(title: "Pizza 🍕"),
    Category(title: "Wings 🍗"),
    Category(title: "Dessert 🍦"),
    Category(title: "Breakfast 🧇"),
    Category(title: "Burgers 🍔"),
    Category(title: "Fast Food 🍟")
    
    
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
                        //                        Text("Categories").foregroundColor(.white).font(.system(size: 40)).frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        
                        /* creating navigation link between home view and see all view*/
                        //                        NavigationLink("See all", destination: SeeAllView()).foregroundColor(.white).font(.system(size: 25)).frame(maxWidth: .infinity, maxHeight: 670, alignment: .topTrailing)
                        
                        //creating Vstack with scroll view for Category
                        //options
                        VStack
                        {
                            //Establishing Categories text
                            Text("Categories")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 40))
                            //establsihing scrollview
                            ScrollView(.horizontal, showsIndicators: false, content:
                                {
                                    HStack(spacing: 25)
                                    {
                                        ForEach(categories){category in
                                            HStack(spacing: 15)
                                            {
                                                
                                                Text(category.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 50))
                                                    .padding(.all).background(Color.orange)
                                                    .cornerRadius(35)
                                            }
                                        }
                                    }.padding(.horizontal)
                                
                                })
                        }
                        //Creating Vstack for Cultures section
                        VStack
                        {
                            
                        }
                        
                    }
                    HStack
                    {
                        VStack
                        {
                            //Establishing Categories text
                            Text("By Cultures")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 40))
                            //establsihing scrollview
                            ScrollView(.horizontal, showsIndicators: false, content:
                                {
                                    HStack(spacing: 25)
                                    {
                                        ForEach(cultures){category in
                                            HStack(spacing: 15)
                                            {
                                                
                                                Text(category.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 50))
                                                    .padding(.all).background(Color.orange)
                                                    .cornerRadius(35)
                                            }
                                        }
                                    }.padding(.horizontal)
                                
                                })
                        }
                    }
                    //Creating HStack for food
                    HStack
                    {
                        VStack
                        {
                            //Establishing Categories text
                            Text("By Food")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 40))
                            //establsihing scrollview
                            ScrollView(.horizontal, showsIndicators: false, content:
                                {
                                    HStack(spacing: 25)
                                    {
                                        ForEach(food){category in
                                            HStack(spacing: 15)
                                            {
                                                
                                                Text(category.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 50))
                                                    .padding(.all).background(Color.orange)
                                                    .cornerRadius(35)
                                            }
                                        }
                                    }.padding(.horizontal)
                                
                                })
                        }
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
