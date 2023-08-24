//
//  DetailView.swift
//  ApiTest
//
//  Created by Sam Kurtzman on 8/23/23.
//

import SwiftUI

struct RestaurantDetailView: View {
    var restaurant: Restaurant
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(restaurant.restaurantID) \(restaurant.restaurantName)").bold()
            Text("\(restaurant.locationAddress) \(restaurant.cuisines)")
            Text("\(restaurant.link) \(restaurant.categories)")
            Text("\(restaurant.yelpRating) \(restaurant.yelpRatingCount)")
        }
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant:  Restaurant.sampleRestaurant)
    }
}
