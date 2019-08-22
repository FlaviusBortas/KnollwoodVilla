//
//  KVTabBarController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class KVTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.backgroundColor = UIColor.black.withAlphaComponent(3)
        setupTabBar()
        
    }

    func setupTabBar() {
        let homeCollectionViewController = HomeCollectionViewController()
        let homeIcon = Constants.kvHomeTabBarIcon
        homeCollectionViewController.tabBarItem = UITabBarItem(title: "Home", image: homeIcon, tag: 0)
        
        let galleryCollectionViewController = GalleryCollectionViewController()
        let galleryIcon = Constants.kvGalleryTabBarIcon
        galleryCollectionViewController.tabBarItem = UITabBarItem(title: "Gallery", image: galleryIcon, tag: 1)
        
        let newsTableViewController = NewsTableViewController()
        let newsIcon = Constants.kvNewsTabBarIcon
        newsTableViewController.tabBarItem = UITabBarItem(title: "News", image: newsIcon, tag: 2)
        
        let contactViewController = ContactViewController()
        let contactIcon = Constants.kvContactTabBarIcon
        contactViewController.tabBarItem = UITabBarItem(title: "Contact", image: contactIcon, tag: 3)
        
        // Changes the image of the slected item once clicked
        //        homeController.tabBarItem.selectedImage = UIImage(named: "GalleryIcon")
        
        let tabBarList = [homeCollectionViewController, galleryCollectionViewController, newsTableViewController, contactViewController]
        
        viewControllers = tabBarList
    }

}
