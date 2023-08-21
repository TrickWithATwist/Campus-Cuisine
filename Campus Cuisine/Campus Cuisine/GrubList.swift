//
//  GrubList.swift
//  Campus Cuisine
//
//  Created by Seth Neubauer on 8/17/23.
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
   // var menu:
    //var deliveryhours:
   // var takeouthours:
}

//placeholder words to search for
 public var searchable =
[
    restaurant(name: "Your mom", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom"),
    restaurant(name: "Your dad", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom"),
    restaurant(name: "idk", link: "yourmom", deliveryeta: "yourmom", deliverymin: "yourmom", deliveryonly: true, location: "yourmom", rating_count: "10", deliverycost: "your mom")
    
]

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
