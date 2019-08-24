//
//  Constants.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class Constants {
    
    static let homeTabString = "Home"
    static let galleryTabString = "Gallery"
    static let newsTabString = "News"
    static let contactTabString = "Contact"
    
    static let knollwoodVillaLocation: CLLocation = CLLocation(latitude: 42.541680, longitude: -83.327550)
    static let KnollwoodVillaRegionRadius: CLLocationDistance = 100.0
    
    /* Should this belong here, computed properties are var objcets, while a constants file should contain only let variables or
        is this legal within the purpose of having a constants folder.
    */
}
