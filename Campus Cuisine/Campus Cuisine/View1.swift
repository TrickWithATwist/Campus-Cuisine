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
    Category(title: "Mediterranean 🥙"),
    Category(title: "Mexican 🇲🇽")
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
    @State var filter = myfilter.shared
    
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
                    
                    //Welcome back text
                    Text("Welcome Back :)")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                    
                    
                    //creating horizontal stack for gear and see all buttons
                    HStack
                    {
                        NavigationLink(destination: settingsview(), label:{
                            Label("", systemImage: "gearshape").foregroundColor(.white).frame(maxWidth: .infinity, alignment: .topLeading)
                        })
                        NavigationLink(destination: SeeAllView(), label:{
                            Text("See All").foregroundColor(.white).frame(alignment: .topTrailing).fontWeight(.bold)
                        })
                    }
                    
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
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            //establsihing scrollview
                            ScrollView(.horizontal, showsIndicators: false, content:
                                        {
                                HStack(spacing: 25)
                                {
                                    ForEach(categories){category in
                                        HStack(spacing: 15)
                                        {
                                            
                                            NavigationLink(destination: filtersview(), label: {
                                                Text(category.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 50))
                                                    .padding(.all).background(Color(red: 0xF4/255.0, green: 0x49 / 255.0, blue: 0x00 / 255.0))
                                                    .cornerRadius(35)
                                            }).simultaneousGesture(TapGesture().onEnded
                                            {
                                                //changes class variable
                                                filter.myfiltervar = (category.title)
                                            })
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
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            //establsihing scrollview
                            ScrollView(.horizontal, showsIndicators: false, content:
                                        {
                                HStack(spacing: 25)
                                {
                                    ForEach(cultures){category in
                                        HStack(spacing: 15)
                                        {
                                            NavigationLink(destination: filtersview(), label: {
                                                Text(category.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 50))
                                                    .padding(.all).background(Color(red: 0xF4/255.0, green: 0x49 / 255.0, blue: 0x00 / 255.0))
                                                    .cornerRadius(35)
                                            }).simultaneousGesture(TapGesture().onEnded
                                            {
                                                //changes class variable
                                                filter.myfiltervar = (category.title)
                                            })
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
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            //establsihing scrollview
                            ScrollView(.horizontal, showsIndicators: false, content:
                                        {
                                HStack(spacing: 25)
                                {
                                    ForEach(food){category in
                                        HStack(spacing: 15)
                                        {
                                            
                                            NavigationLink(destination: filtersview(), label: {
                                                Text(category.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 50))
                                                    .padding(.all).background(Color(red: 0xF4/255.0, green: 0x49 / 255.0, blue: 0x00 / 255.0))
                                                    .cornerRadius(35)
                                            }).simultaneousGesture(TapGesture().onEnded
                                            {
                                                //changes class variable
                                                filter.myfiltervar = (category.title)
                                            })
                                        }
                                    }
                                }.padding(.horizontal)
                                
                            })
                        }
                    }
                    Spacer()
                })
            
            
        }.navigationBarHidden(true)
    }
    
    /* establishing extra view for the "See All" screen*/
    struct SeeAllView: View {
        var body: some View
        {
            @State var filter = myfilter.shared
            
            Color.black.ignoresSafeArea().overlay(
                VStack
                {
                    //Text("See all screen").foregroundColor(.white)
                    //establsihing scrollview
                    ScrollView(.vertical, showsIndicators: false, content:
                                {
                        VStack(spacing: 25)
                        {
                            ForEach(categories){category in
                                VStack(spacing: 15)
                                {
                                    
                                    NavigationLink(destination: filtersview(), label: {
                                        Text(category.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .font(.system(size: 40))
                                            .padding(.all).background(Color(red: 0xF4/255.0, green: 0x49 / 255.0, blue: 0x00 / 255.0))
                                            .cornerRadius(35)
                                    }).simultaneousGesture(TapGesture().onEnded
                                    {
                                        //changes class variable
                                        filter.myfiltervar = (category.title)
                                    })
                                }
                            }
                        }.padding(.vertical)
                        
                    })
                })
        }
        
        
        
        
        
        struct View1_Previews: PreviewProvider {
            static var previews: some View {
                View1()
            }
        }
    }
}

//establishing view for looking at filters
    struct filtersview: View
    {
        @State var filter = myfilter.shared

        var body: some View
        {
            
            Color.black.overlay(
                VStack
                {
                    Text(filter.myfiltervar)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .background(Color(red: 0xF4/255.0, green: 0x49 / 255.0, blue: 0x00 / 255.0))
                        .cornerRadius(35)
                }
            ).ignoresSafeArea()
        }
    }
