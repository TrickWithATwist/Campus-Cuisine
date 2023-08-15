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
            VStack
            {
                Text("Favorites").foregroundColor(.white)
            }).ignoresSafeArea()
    }
}

struct View4_Previews: PreviewProvider {
    static var previews: some View {
        View4()
    }
}
