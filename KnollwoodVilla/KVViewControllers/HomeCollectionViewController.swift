//
//  HomeCollectionViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class HomeCollectionViewController: UIViewController {
    
    var data: [Int] = Array(0..<10)
    
    
    let homeCollectionViewController: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        
        collection.backgroundColor = UIColor.gray
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.isScrollEnabled = true
        
        return collection
    }()
    
    let imageView: UIImageView = {
       let view = UIImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeCollectionViewController.dataSource = self
        homeCollectionViewController.delegate = self
        homeCollectionViewController.register(HomeCell.self, forCellWithReuseIdentifier: HomeCell.reuseIdentifier)
        
        homeCollectionViewController.alwaysBounceVertical = true
        homeCollectionViewController.backgroundColor = .white
        
        setupCollectionViewController()
        
    }
    
    func setupCollectionViewController() {
        
        // Add all subViews
        
        view.addSubview(homeCollectionViewController)
        view.addSubview(imageView)
        
        // Constraints
        
        NSLayoutConstraint.activate([imageView.topAnchor.constraint(equalTo: view.topAnchor),
                                     imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     imageView.heightAnchor.constraint(equalToConstant: 125)
            ])
        
        NSLayoutConstraint.activate([homeCollectionViewController.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                     homeCollectionViewController.heightAnchor.constraint(equalToConstant: 773),
                                     homeCollectionViewController.widthAnchor.constraint(equalToConstant: view.frame.width)])
    }
    
}

extension HomeCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCell.reuseIdentifier, for: indexPath) as! HomeCell
        
        return cell
    }
}

extension HomeCollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension HomeCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 10, height: 175)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}
