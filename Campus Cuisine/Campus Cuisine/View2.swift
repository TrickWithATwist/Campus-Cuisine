//
//  View2.swift
//  Campus Cuisine
//
//  //

import SwiftUI

//placeholder words to search for
let searchable =
[
    "hello",
    "hi",
    "hola"
]

struct View2: View {
    @State private var searchText = ""
    var body: some View
    {
        Color.black.overlay(
            VStack
            {
                    
            }).ignoresSafeArea()
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
