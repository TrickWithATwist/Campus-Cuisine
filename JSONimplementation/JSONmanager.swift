//
//  JSONmanager.swift
//  Campus Cuisine
//
//  Created by Sam Kurtzman on 8/22/23.
//

import Foundation

//restaurants Struct
struct Restaurant: Codable {
    let restaurantID: Int
    let restaurantName: String
    let link: String
    let yelpRating, yelpRatingCount, locationAddress, cuisines: String
    let categories: String

    enum CodingKeys: String, CodingKey {
        case restaurantID = "restaurant_id"
        case restaurantName = "restaurant_name"
        case link
        case yelpRating = "yelp_rating"
        case yelpRatingCount = "yelp_rating_count"
        case locationAddress = "location_address"
        case cuisines, categories
    }
    static let allRestaurants: [Restaurant] = Bundle.main.decode(file: "restaurants.json")
    static let sampleRestaurant: Restaurant = allRestaurants[0]
}

//Menu Struct
struct MenuItem: Codable {
    let itemID: Int
    let itemName, itemPrice, itemDescription, menuCategory: String
    let restaurantID: Int

    enum CodingKeys: String, CodingKey {
        case itemID = "item_id"
        case itemName = "item_name"
        case itemPrice = "item_price"
        case itemDescription = "item_description"
        case menuCategory = "menu_category"
        case restaurantID = "restaurant_id"
    }
    
    static let allMenuItems: [MenuItem] = Bundle.main.decode(file: "menu_items.json")
    static let sampleMenuItem: MenuItem = allMenuItems[0]
}


extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the project!")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not find \(file) in the project!")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) in the project!")
        }
        
        return loadedData
    }
}


    




    


