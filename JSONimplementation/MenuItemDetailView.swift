//
//  MenuItemDetailView.swift
//  ApiTest
//
//  Created by Sam Kurtzman on 8/23/23.
//

import SwiftUI

struct MenuItemDetailView: View {
    var menu_item: MenuItem
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(menu_item.itemID) \(menu_item.itemName)").bold()
            Text("\(menu_item.itemPrice) \(menu_item.itemDescription)")
            Text("\(menu_item.restaurantID) \(menu_item.menuCategory)")
        }
    }
}

struct MenuItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailView(menu_item: MenuItem.sampleMenuItem)
    }
}
