//
//  HomeVc.swift
//  Knollwood Villa
//
//  Created by Flavius on 5/13/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class HomeTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        
        switch identifier {
        case HomeTab.contact.rawValue:
            performSegue(withIdentifier: HomeTab.contact.rawValue, sender: sender)
        case HomeTab.aboutUs.rawValue:
            performSegue(withIdentifier: HomeTab.aboutUs.rawValue, sender: sender)
        case HomeTab.gallery.rawValue:
            performSegue(withIdentifier: HomeTab.contact.rawValue, sender: sender)
        case HomeTab.news.rawValue:
            performSegue(withIdentifier: HomeTab.news.rawValue, sender: sender)
        default:
            print("Error")
        }
    }
    
}

