//
//  Landmark.swift
//  MapExample8
//
//  Created by Darianne Salinas on 6/27/22.
//

import UIKit
import MapKit

class Landmark: NSObject, MKAnnotation {
    
    let date: String
    let locationName: String
    let latitude: Double
    let longitude: Double
    let address: String
    let imageName: [String]
    let Description: String
    let names: String
//    let imageCaption: [String]
    
   var coordinate: CLLocationCoordinate2D
    
    init(date: String, locationName: String, latitude: Double, longitude: Double, address: String, imageName: [String], Description: String, names: String, coordinate: CLLocationCoordinate2D) {
        
        self.date = date
        self.locationName = locationName
        self.latitude = latitude
        self.longitude = longitude
        self.address = address
        self.imageName = imageName
        self.Description = Description
        self.names = names
        self.coordinate = coordinate
    }
    
    
    
    
}
