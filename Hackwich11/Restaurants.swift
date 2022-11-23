//
//  Restaurants.swift
//  Hackwich11
//
//  Created by Stephan on 11/22/22.
//

import UIKit
import CoreLocation
import MapKit

class Restaurants: NSObject, MKAnnotation {
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return restaurantTitle
    }

}
