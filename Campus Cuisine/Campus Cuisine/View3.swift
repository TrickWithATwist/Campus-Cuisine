//
//  View3.swift
//  Campus Cuisine
//
//
//

import SwiftUI
import MapKit

struct View3: View {
    var body: some View
    {
        /* establishing mutable variable for
         geographic location of user. @State means
         that the variable is mutable and "var"
         is the class type of the variable*/
        @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37, longitude: -121, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)),
        //MKCoordinateRegion establishes rectangular map
        //reigion in specific latitue and longitude
        
        
        //establish backdrop color
        Color.black.ignoresSafeArea().overlay(
            
        //establing map
            Map(coordinateRegion: $region),
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
