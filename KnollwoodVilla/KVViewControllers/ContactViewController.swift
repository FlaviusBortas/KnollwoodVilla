//
//  ContactViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ContactViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    var userLocation: CLLocationCoordinate2D?
    var source: MKMapItem?

    var destination = MKMapItem(coordinate: .init(latitude: Constants.knollwoodVillaLocation.coordinate.latitude, longitude: Constants.knollwoodVillaLocation.coordinate.longitude), name: "Source")
    var region = MKCoordinateRegion(center: Constants.knollwoodVillaLocation.coordinate, latitudinalMeters: Constants.KnollwoodVillaRegionRadius, longitudinalMeters: Constants.KnollwoodVillaRegionRadius)

    let getDirectionsButton: UIButton = {
        let button = UIButton.init(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Get Directions", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = .black
        
        return button
        
    }()
    
    let contactView: UIView =  {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        
        return view
    }()
    
    let mapView: MKMapView = {
        let map = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
        
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
        
        setupContactViewController()
        getDirectionsButton.addTarget(self, action: #selector(getDirectionsTapped(_ :)), for: .touchUpInside)
    }
    
    @objc func getDirectionsTapped(_ : UIButton) {
        
        guard let currentLocation = userLocation else { return }
        let source = MKMapItem(coordinate: .init(latitude: currentLocation.latitude, longitude: currentLocation.longitude), name: "Source")
    
        MKMapItem.openMaps(with: [source, destination],launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
    }
    
    func setupContactViewController() {
        
        view.addSubview(contactView)
        view.addSubview(getDirectionsButton)
        view.addSubview(mapView)
        
        NSLayoutConstraint.activate([getDirectionsButton.topAnchor.constraint(equalTo: mapView.bottomAnchor, constant: 12),
                                     getDirectionsButton.widthAnchor.constraint(equalToConstant: 375),
                                     getDirectionsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
        NSLayoutConstraint.activate([mapView.topAnchor.constraint(equalTo: view.topAnchor),
                                   mapView.bottomAnchor.constraint(equalTo: contactView.topAnchor),
                                   mapView.heightAnchor.constraint(equalToConstant: 225),
                                     mapView.widthAnchor.constraint(equalToConstant: view.frame.width)])
        
        NSLayoutConstraint.activate([contactView.topAnchor.constraint(equalTo: mapView.bottomAnchor),
                                     contactView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     contactView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     contactView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
}

extension ContactViewController: CLLocationManagerDelegate, MKMapViewDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let currentLocation: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        userLocation = currentLocation
    }
}

extension MKMapItem {
    convenience init(coordinate: CLLocationCoordinate2D, name: String) {
        self.init(placemark: .init(coordinate: coordinate))
        self.name = name
    }
}
