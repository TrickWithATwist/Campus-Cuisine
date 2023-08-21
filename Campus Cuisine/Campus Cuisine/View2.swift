//
//  View2.swift
//  Campus Cuisine
// Link to video: https://www.youtube.com/watch?v=ReHwsu_fjKs
//
//  //

import SwiftUI
import UIKit

struct View2: View {
    private var grub = grubList
    @State var searchText = ""
    
    
    var body: some View {
        NavigationView
        {
            
            List
            {
                ForEach(food, id: \.self){ food in
                    HStack
                    {
                        NavigationLink(food.capitalized, destination: RestaurantView())
                        //Text(food.capitalized)
                        Spacer()
                        
                    }
                    .padding()
                }
            }
            .searchable(text:$searchText)
            .navigationTitle("Food")
        }
    }
    
    var food: [String] {
            let lcFood = grub.map { $0.lowercased() }
            
            if searchText.isEmpty
            {
                return lcFood
            }
            else
            {
                return lcFood.filter { $0.starts(with: searchText.lowercased()) }
            }
        }
    
}




/*
//struct for restaurant objects
struct restaurant: Identifiable
{
    var id: String = UUID().uuidString
    var name: String
    var link: String
    var deliveryeta: String
    var deliverymin: String
    var deliveryonly: Bool
    var location: String
    var rating_count:String
    var deliverycost : String
   // var menu:
    //var deliveryhours:
   // var takeouthours:
}

//placeholder words to search for
let searchable =
[
    restaurant(name: "Your mom", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom"),
    restaurant(name: "Your dad", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom"),
    restaurant(name: "idk", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom")
    
]

struct View2: View {
    @State private var searchText = ""
    var body: some View
    {
        NavigationView
        {
            Color.black.overlay(
                HStack
                {
                    //making search bar
                    Image(systemName: "magnifyingglass").foregroundColor(.black)
                    TextField("Search restaurant by name...", text: $searchText).foregroundColor(.black)
                }.font(.headline).foregroundColor(.white).padding(.all).background(Color.white).cornerRadius(35)).ignoresSafeArea()
        }
    }
}*/

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
