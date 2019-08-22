//
//  Constants.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import Foundation
import UIKit

class Constants {
    
    /* Should this belong here, computed properties are var objcets, while a constants file should contain only let variables or
        is this legal within the purpose of having a constants folder.
    */
    
    static var kvGalleryTabBarIcon: UIImage {
        if let galleryIcon = UIImage(named: "GalleryIcon") {
            return galleryIcon
        }
        
       return UIImage()
    }
    
    static var kvContactTabBarIcon: UIImage {
        if let galleryIcon = UIImage(named: "ContactIcon") {
            return galleryIcon
        }
        
        return UIImage()
    }
    
    static var kvNewsTabBarIcon: UIImage {
        if let galleryIcon = UIImage(named: "NewsIcon") {
            return galleryIcon
        }
        
        return UIImage()
    }
    
    static var kvHomeTabBarIcon: UIImage {
        if let homeIcon = UIImage(named: "HomeIcon") {
            return homeIcon
        }
        
        return UIImage()
    }
}
