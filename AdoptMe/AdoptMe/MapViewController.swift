//
//  MapViewController.swift
//  AdoptMe
//
//  Created by don't touch me on 7/6/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
//    var locationManager = CLLocationManager()
    
    @IBOutlet weak var locoView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
        
        self.addPin(40.725895, longitude: -111.552574, title: "Nuzzles Co", phone: "435.649.5441")
        self.addPin(40.732895, longitude: -111.383897, title: "Rescue Ranch", phone: "435.649.5441")
        
        let latitude = (40.732895 + 40.730459) / 2
        let longitude = (-111.551152 + -111.383897) / 2
        
        let location = CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
        
        

//        self.nuzzleButton()
        self.centerMap(location)
        
    }
    
//    @IBAction func nuzzleButton() {
//        
//        let status = CLAuthorizationStatus.AuthorizedWhenInUse
//        
//        if status != .Denied {
//            self.locoView.showsUserLocation = true
//            self.locationManager.requestLocation()
//            
//        }
//        
//    }
    
//    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
//        self.nuzzleButton()
//    }
    
    func addPin(latitude: Double, longitude: Double, title: String, phone: String) {
        
        let location = CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = title
        annotation.subtitle = phone
        
        self.locoView.addAnnotation(annotation)
    }
    
    func centerMap(centerCoordinate: CLLocationCoordinate2D) {
        
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        
        let region = MKCoordinateRegion(center: centerCoordinate, span: span)
        
        self.locoView.setRegion(region, animated: true)
    }
    
    func  locoView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation.isKindOfClass(CustomPointAnnotation) {
            
            let identifier = "MapPin"
            
            let annotationView = MKAnnotationView(annotation: annotation,reuseIdentifier: identifier)
            
            annotationView.canShowCallout = true
            
            let imageView = UIImageView(frame: CGRectMake(0, 0, 44, 44))
            imageView.image = UIImage(named: "map")
            
            annotationView.image = imageView.image
            
            return annotationView

        }
        return nil
    }
    

}
