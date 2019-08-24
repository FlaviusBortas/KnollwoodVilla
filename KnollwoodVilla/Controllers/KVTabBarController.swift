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
        let homeIcon = UIImage.homeTabBarIcon
        homeCollectionViewController.tabBarItem = UITabBarItem(title: Constants.homeTabString, image: homeIcon, tag: 0)
        
        let galleryCollectionViewController = GalleryCollectionViewController()
        let galleryIcon = UIImage.galleryTabBarIcon
        galleryCollectionViewController.tabBarItem = UITabBarItem(title: Constants.galleryTabString, image: galleryIcon, tag: 1)
        
        let newsTableViewController = NewsTableViewController()
        let newsIcon = UIImage.newsTabBarIcon
        newsTableViewController.tabBarItem = UITabBarItem(title: Constants.newsTabString, image: newsIcon, tag: 2)
        
        let contactViewController = ContactViewController()
        let contactIcon = UIImage.contactTabBarIcon
        contactViewController.tabBarItem = UITabBarItem(title: Constants.contactTabString, image: contactIcon, tag: 3)
        
        // Changes the image of the slected item once clicked
        //        homeController.tabBarItem.selectedImage = UIImage(named: "GalleryIcon")
        
        let tabBarList = [homeCollectionViewController, galleryCollectionViewController, newsTableViewController, contactViewController]
        
        viewControllers = tabBarList
    }

}
