//
//  settingsview.swift
//  Campus Cuisine
//


import SwiftUI

struct settingsview: View {
    var body: some View {
        NavigationView
        {
            Color.black.overlay(
                VStack
                {
                    Text("Settings").foregroundColor(.white).fontWeight(.bold).font(.system(size: 50)).frame(maxWidth: .infinity,  alignment: .topLeading)
                    
                    //making the buttons idk
                    Button("Privacy Policy", action:
                            {
                        //stuff idk will fill later
                    }).foregroundColor(.white).fontWeight(.bold).padding(.all).background(Color(red: 0xF4/255.0, green: 0x49 / 255.0, blue: 0x00 / 255.0)).cornerRadius(50).font(.system(size:40))
                    NavigationLink(destination: lolview(), label:{
                        Text("Feedback").foregroundColor(.white).fontWeight(.bold).padding(.all).background(Color(red: 0xF4/255.0, green: 0x49 / 255.0, blue: 0x00 / 255.0)).cornerRadius(50).font(.system(size:40))
                        })
                }).ignoresSafeArea()
        }
    }
}

struct settingsview_Previews: PreviewProvider {
    static var previews: some View {
        settingsview()
    }
}
