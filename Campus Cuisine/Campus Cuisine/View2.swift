//
//  View2.swift
//  Campus Cuisine
//
//  //

import SwiftUI
import UIKit

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
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
