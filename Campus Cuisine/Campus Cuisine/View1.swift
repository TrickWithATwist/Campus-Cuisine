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
                
                // Vertical Stack holding contents of Home Screen
                VStack
                {
                    /* creating navigation link between home view and see all view*/
                    //destination is temporary
                    NavigationLink(destination: SeeAllView(), label:{
                        Label("", systemImage: "gear").foregroundColor(.white)
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
                        // Fast Food Button
                        Button(action: { }, label: {
                            Text("Fast Food")
                                .padding(50)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        })
                        // Dine In Button
                        Button(action: { }, label: {
                            Text("Dine In")
                                .padding(50)
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
                                .padding(50)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        })
                        // Italian Button
                        Button(action: { }, label: {
                            Text("Italian")
                                .padding(50)
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
                                .padding(50)
                                .background(Color.orange)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        })
                        // Tacos Button
                        Button(action: { }, label: {
                            Text("Tacos")
                                .padding(50)
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
