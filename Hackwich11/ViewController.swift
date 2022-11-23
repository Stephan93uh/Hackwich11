//
//  ViewController.swift
//  Hackwich11
//
//  Created by Stephan on 11/20/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapLocation(location: initialLocation)
        
        let restaurantOne = Restaurants(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude:21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
    }

    func centerMapLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
}

