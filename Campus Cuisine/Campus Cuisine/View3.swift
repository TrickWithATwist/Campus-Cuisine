//
//  View3.swift
//  Campus Cuisine
//
//
//

import SwiftUI

struct View3: View {
    var body: some View
    {
        Color.black.ignoresSafeArea().overlay(
        VStack
        {
            Text("Map placeholder").foregroundColor(.white)
        })
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}
