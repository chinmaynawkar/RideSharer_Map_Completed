//
//  MapViewController.swift
//  RideSharer
//
//

import UIKit
import MapKit

class YourViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Request user's location and display it on the map
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        mapView.showsUserLocation = true
    }
    
    // Other code in your view controller
    
    // Location Manager instance for handling location updates
    let locationManager = CLLocationManager()
}

// CLLocationManagerDelegate methods for handling location permissions
extension YourViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
        case .denied:
            showLocationDeniedAlert()
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let userLocation = locations.first {
            // Update map to display user's current location
            let region = MKCoordinateRegion(center: userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            mapView.setRegion(region, animated: true)
        }
    }
    
    func showLocationDeniedAlert() {
        let alertController = UIAlertController(title: "Location Access Denied", message: "Please enable location access in Settings to use this feature.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}

