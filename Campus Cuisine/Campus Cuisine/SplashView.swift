//
//  SplashView.swift
//  Campus Cuisine
//
//
//

//splash screen view

import SwiftUI

struct SplashView: View
{
    @State var isActive: Bool = false
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View
    {
        if(colorScheme == .light)
        {
            Color.black.overlay(
                ZStack
                {
                    if self.isActive
                    {
                        ContentView()
                    }
                    else
                    {
                        Rectangle().background(Color.black)
                        Image("logo-white").resizable().scaledToFit()
                    }
                }.onAppear
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                })
        }
        else
        {
            Color.white.overlay(
                ZStack
                {
                    if self.isActive
                    {
                        ContentView()
                    }
                    else
                    {
                        Rectangle().background(Color.black)
                        Image("logo-white").resizable().scaledToFit()
                    }
                }.onAppear
                {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                })
        }
    }
    
    struct SplashView_Previews: PreviewProvider {
        static var previews: some View {
            SplashView()
        }
    }
}
