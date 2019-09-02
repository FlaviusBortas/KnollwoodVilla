//
//  MainTabBarController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        
    }

    func setupTabBar() {
        self.tabBar.backgroundColor = UIColor.black.withAlphaComponent(3)
        
        // Controllers
        let homeCollectionViewController = HomeCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let homeIcon = UIImage.homeTabBarIcon
        homeCollectionViewController.tabBarItem = UITabBarItem(title: Constants.TabBarNames.home, image: homeIcon, tag: 0)
        
        let galleryCollectionViewController = GalleryCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let galleryIcon = UIImage.galleryTabBarIcon
        galleryCollectionViewController.tabBarItem = UITabBarItem(title: Constants.TabBarNames.gallery, image: galleryIcon, tag: 1)
        
        let newsTableViewController = NewsTableViewController()
        let newsIcon = UIImage.newsTabBarIcon
        newsTableViewController.tabBarItem = UITabBarItem(title: Constants.TabBarNames.news, image: newsIcon, tag: 2)
        
        let contactViewController = ContactViewController()
        let contactIcon = UIImage.contactTabBarIcon
        contactViewController.tabBarItem = UITabBarItem(title: Constants.TabBarNames.contact, image: contactIcon, tag: 3)
        
        // Create navControllers with Controllers as root views
        let galleryNavigationController = UINavigationController(rootViewController: galleryCollectionViewController)
        galleryNavigationController.navigationBar.prefersLargeTitles = true
        
        let homeNavigationController = UINavigationController(rootViewController: homeCollectionViewController)
        homeNavigationController.navigationBar.prefersLargeTitles = true
        
        let newsNavigationController = UINavigationController(rootViewController: newsTableViewController)
        newsNavigationController.navigationBar.prefersLargeTitles = true
        
        let tabBarList = [homeNavigationController, galleryNavigationController, newsNavigationController, contactViewController]
        
        viewControllers = tabBarList
    }
}
