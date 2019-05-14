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
        case Tabs.contact.rawValue:
            performSegue(withIdentifier: Tabs.contact.rawValue, sender: sender)
        case Tabs.aboutUs.rawValue:
            performSegue(withIdentifier: Tabs.aboutUs.rawValue, sender: sender)
        case Tabs.gallery.rawValue:
            performSegue(withIdentifier: Tabs.contact.rawValue, sender: sender)
        case Tabs.news.rawValue:
            performSegue(withIdentifier: Tabs.news.rawValue, sender: sender)
        default:
            print("Error")
        }
    }
    
}

