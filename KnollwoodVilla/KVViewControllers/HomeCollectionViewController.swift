//
//  HomeCollectionViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class HomeCollectionViewController: UIViewController {
    
    let homeCollectionViewController: UICollectionView = {
        let layout = UICollectionViewLayout()
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        
        collection.backgroundColor = UIColor.gray
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.isScrollEnabled = true
        
        return collection
    }()
    
    let imageView: UIImageView = {
        let banner = UIImageView()
        
        banner.backgroundColor = UIColor.green
        banner.translatesAutoresizingMaskIntoConstraints = false
        
        return banner
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Home"
        view.addSubview(imageView)
        view.addSubview(homeCollectionViewController)
        setupCollectionViewController()
        
    }
    
    func setupCollectionViewController() {
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 125).isActive = true
        
        homeCollectionViewController.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        homeCollectionViewController.heightAnchor.constraint(equalToConstant: 773).isActive = true
        homeCollectionViewController.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
    }
    
}
