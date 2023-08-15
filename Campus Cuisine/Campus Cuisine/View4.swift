//
//  View4.swift
//  Campus Cuisine
//
//

import SwiftUI

struct View4: View {
    var body: some View
    {
        
        Color.black.overlay(
            HStack
            {
                Text("Favorites").foregroundColor(.white).font(.system(size: 50)).frame(maxWidth: .infinity, maxHeight: 800, alignment: .topLeading)
            }).ignoresSafeArea()
    }
}

struct View4_Previews: PreviewProvider {
    static var previews: some View {
        View4()
    }
}
