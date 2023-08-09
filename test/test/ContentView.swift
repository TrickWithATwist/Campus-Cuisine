//
//  ContentView.swift
//  test
//
//  Created by Akram Djomehri on 8/8/23.
//

import SwiftUI

struct ContentView: View {
    //establishing essential variables
    @State private var myint = 1
    @State private var tap = false
    
    var body: some View {
       //temp
      //  var myint : Int = 1
        switch(myint)
        {
            case 1:
                Text("yourmominred").background(Color.red)
            case 2:
                Text("yourmominblue").background(Color.blue)
            default:
                Text("yourmomdefeault")
        }
        
        Button("Tap") {
                      tap.toggle()
                      if tap {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0)
                          {
                              switch myint {
                              case 1:
                                  myint = 2
                              case 2:
                                  myint = 1
                              default:
                                  break
                              }
                          }
                      }
                  }
        
    };
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
