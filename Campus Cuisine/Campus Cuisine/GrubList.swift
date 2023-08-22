//
//  GrubList.swift
//  Campus Cuisine
//

//

import Foundation
import SwiftUI

//public var grubList = [
//    "Asian 🌏",
//    "Sandwiches 🥪",
//    "Seafood 🐟",
//    "Pizza 🍕",
//    "Italian 🍝",
//    "Wings 🍗",
//    "Fast Food 🍟",
//    "Mexican 🇲🇽",
//    "Dessert 🍦",
//    "American 🇺🇸",
//    "Breakfast 🧇",
//    "Mediterranean 🥙",
//    "Burgers 🍔"]


//struct for restaurant objects
 public struct restaurant: Identifiable
{
    public var id: String = UUID().uuidString
    var name: String
    var link: String
    var deliveryeta: String
    var deliverymin: String
    var deliveryonly: Bool
    var location: String
    var rating_count:String
    var deliverycost : String
     var category: String
     var rID: Int
   // var menu:
    //var deliveryhours:
   // var takeouthours:
}

//placeholder words to search for
 public var searchable =
[
    restaurant(name: "Your mom", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom", category: "American", rID: 332),
    restaurant(name: "Your dad", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom", category: "American", rID: 64386483683),
    restaurant(name: "idk", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom", category: "American", rID: 5795797595)
    
]

//struct for the menu crap
public struct menu: Identifiable
{
    public var id: String = UUID().uuidString
    var item_id: Int
    var item_name: String
    var item_description: String
    var rID: Int
}

//the fricking placeholder list ong
public var grubList: [String] = searchable.map { $0.name }

//establishing var for the restaurant view title
public var restaurantname: String = "placeholder"
final class uhidk
{
    static let shared = uhidk()
    private init() {}
    //establishing mutable variavle
    var namevar = "placeholder"
}

//establishing favs list
public var favs: [String] = []
