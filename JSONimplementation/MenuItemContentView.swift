//
//  MenuItemContentView.swift
//  ApiTest
//
//  Created by Sam Kurtzman on 8/23/23.
//

import SwiftUI

struct MenuItemContentView: View {
    private var menu_item: [MenuItem] = MenuItem.allMenuItems
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu_item, id:\.itemName) { menu_item in
                    NavigationLink(destination: MenuItemDetailView(menu_item : menu_item)) {
                        VStack(alignment: .leading) {
                            Text("\(menu_item.itemName)")
                            
                        }
                    }
                }
            }
        }
    }
}

struct MenuItemContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemContentView()
    }
}
