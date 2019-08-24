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
    
    static let knollwoodVillaLocation: CLLocation = CLLocation(latitude: 42.541680, longitude: -83.327550)
    static let KnollwoodVillaRegionRadius: CLLocationDistance = 100.0

}

extension Constants {
    
    enum TabBarNames {
        static let home = "Home"
        static let gallery = "Gallery"
        static let news = "News"
        static let contact = "Contact"
    }
}
