//
//  screen1.swift
//  test
//
//  Created by Akram Djomehri on 8/9/23.
//

import Foundation
import SwiftUI

import SwiftUI

struct screen1: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink("Go to Second Screen", destination: SecondScreen())
                    .padding()
            }
            .navigationBarTitle("First Screen")
        }
    }
}

struct SecondScreen: View {
    var body: some View {
        VStack {
            Text("Welcome to the Second Screen!")
                .font(.title)
                .padding()
            
            NavigationLink("Go Back", destination: ContentView())
                .padding()
        }
        .navigationBarTitle("Second Screen")
    }
}

struct screen1_Previews: PreviewProvider {
    static var previews: some View {
        screen1()
    }
}
