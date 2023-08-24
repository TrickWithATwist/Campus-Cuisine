//
//  ContentView.swift
//  ApiTest
//
//  Created by Sam Kurtzman on 8/22/23.
//

import SwiftUI

struct RestaurantContentView: View {
    private var restaurant: [Restaurant] = Restaurant.allRestaurants
    
    var body: some View {
        NavigationView {
            List {
                ForEach(restaurant, id:\.restaurantName) { restaurant in
                    NavigationLink(destination: RestaurantDetailView(restaurant : restaurant)) {
                        VStack(alignment: .leading) {
                            Text("\(restaurant.restaurantName)")
                            
                        }
                    }
                }
            }
        }
    }
}

struct RestaurantContentView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantContentView()
    }
}
