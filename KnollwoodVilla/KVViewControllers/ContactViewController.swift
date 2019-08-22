//
//  ContactViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit
import MapKit

class ContactViewController: UIViewController {
    
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
    
        setupContactViewController()
    }
    
    func setupContactViewController() {
        
        view.addSubview(contactView)
        view.addSubview(mapView)
        
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
