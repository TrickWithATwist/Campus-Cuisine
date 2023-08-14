//
//  theclassthing.swift
//  Campus Cuisine
//
//  Created by Akram Djomehri on 8/14/23.
//

import SwiftUI

struct theclassthing: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct theclassthing_Previews: PreviewProvider {
    static var previews: some View {
        theclassthing()
    }
}

//establishing the class

final class myfilter
{
    static let shared = myfilter()
    private init() {}
    
    //establishing mutable variavle
    var myfiltervar = 0;
}
