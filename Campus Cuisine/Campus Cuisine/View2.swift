//
//  View2.swift
//  Campus Cuisine
//
//  //

import SwiftUI

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
    "hello",
    "hi",
    "hola"
]

struct View2: View {
    @State private var searchText = ""
    var body: some View
    {
        Color.black.overlay(
            VStack
            {
                    
            }).ignoresSafeArea()
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
