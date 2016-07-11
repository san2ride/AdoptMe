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

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var locationManager = CLLocationManager()
    
    @IBOutlet weak var locoView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        self.nuzzleButton()
        
    }
    
    @IBAction func nuzzleButton() {
        
        let status = CLAuthorizationStatus.AuthorizedWhenInUse
        
        if status != .Denied {
            self.locoView.showsUserLocation = true
            self.locationManager.requestLocation()
            
        }
        
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        self.nuzzleButton()
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.count > 0 {
            let location = locations.first
            print(location?.coordinate.latitude)
            print(location?.coordinate.longitude)
            
            if let center = location?.coordinate {
                let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
                self.locoView.setRegion(region, animated: true)
                self.locoView.showsUserLocation = true
                
                self.createAnnotation("Mac", subTitle: "", coordinate: center)
                print("locoView updated")
                
            }
        }
        print("location updated")
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print(error.localizedDescription)
    }
    
    func geoCoder(fullAddressString:String) {
        
        let geoCoder = CLGeocoder()
        
        geoCoder.geocodeAddressString(fullAddressString, completionHandler: { placemarks, error in
            
            })
        
    }
    
    func  createAnnotation(title: String, subTitle: String, coordinate: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.title = title
        annotation.subtitle = subTitle
        annotation.coordinate = coordinate
        
        if self.locoView != nil {
            self.locoView.addAnnotation(annotation)
        }
    }
    
    func  locoView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        let identifier = "MyPinIdentifier"
        
        if annotation.isKindOfClass(MKUserLocation) {
            return nil
        }
        
        var annotationView:MKPinAnnotationView? = locoView.dequeueReusableAnnotationViewWithIdentifier(identifier) as? MKPinAnnotationView
        
        if annotationView == nil {
            
            annotationView?.pinTintColor = UIColor.orangeColor()
            
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            
            annotationView?.canShowCallout = true
            
            let leftIconView = UIImageView(frame: CGRectMake(0, 0, 32, 30))
            leftIconView.image = UIImage(named: "mac")
            annotationView?.leftCalloutAccessoryView = leftIconView
            
            
        }
        return annotationView
    }
    

}
