//
//  View3.swift
//  Campus Cuisine
//
//
//

import SwiftUI
import MapKit

struct View3: View {
    
    //creating instance of View3Model
    @ObservedObject var viewModel = View3Model()
    
    /* establishing mutable variable for
     geographic location of user. @State means
     that the variable is mutable and "var"
     is the class type of the variable*/
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37, longitude: -121), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    //MKCoordinateRegion establishes rectangular map
    //reigion in specific latitue and longitude
    var body: some View
    {
        //establish backdrop color
        //Color.black.ignoresSafeArea().overlay(
            
        //establing map
        Map(coordinateRegion: $region, showsUserLocation: true).onAppear{
            viewModel.checkiflocationservicesareenabled()
        }
        
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}

//establishing class
/* "final" class type means that no other class can be
 inhereted from it*/
final class View3Model: NSObject, ObservableObject, CLLocationManagerDelegate
{
    var locationmanager: CLLocationManager?
        
        func checkiflocationservicesareenabled()
        {
            if CLLocationManager.locationServicesEnabled()
            {
                locationmanager = CLLocationManager()
                locationmanager!.delegate = self
                checkLocationauthorization()
            }
            else
            {
                print("Please turn on location services to use map.")
            }
        }
    
    //establishing function to get user authorization
    func checkLocationauthorization()
    {
        guard let locationmanager = locationmanager else
        {
            return
        }
        
        //switch statement of authorization status
        switch locationmanager.authorizationStatus
        {
            case .notDetermined:
                locationmanager.requestWhenInUseAuthorization()
            case .restricted:
            print("Your location is currently restricted.")
        case .denied:
            print("Your location is currently restricted.")
        case .authorizedAlways, .authorizedWhenInUse:
            //breaking in a switch statement in Swift
            //is kind of like just putting "null"
            //in a statement/block of code
            break
        @unknown default:
            break
        }
        
    }
    
    //establishing another function
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager)
    {
        checkLocationauthorization()
    }
        
}



