//
//  theclassthing.swift
//  Campus Cuisine
//

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

//establishing the classes

//this class is used to establish
//a global variable to keep track of filters selected by user
final class myfilter
{
    static let shared = myfilter()
    private init() {}
    
    //establishing mutable variavle
    var myfiltervar = "placeholder"
}

/* this class is used to create list of favorite restaurants
 to scroll through on the favorites tab*/
final class myfavorites
{
    //static let shared = myfavorites()
    private init() {}
    
    //making variable
    var myfavorites = {}
}
