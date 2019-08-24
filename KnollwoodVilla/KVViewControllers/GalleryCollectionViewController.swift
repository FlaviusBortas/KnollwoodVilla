//
//  GalleryViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class GalleryCollectionViewController: UIViewController {
    
    var data: [Int] = Array(0..<10)
    
    let galleryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        
        collection.backgroundColor = UIColor.blue
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
        
        galleryCollectionView.dataSource = self
        galleryCollectionView.delegate = self
        galleryCollectionView.register(GalleryCell.self, forCellWithReuseIdentifier:
            GalleryCell.reuseIdentifier)
        
        galleryCollectionView.alwaysBounceVertical = true
        galleryCollectionView.backgroundColor = .white
        
        setupCollectionViewController()
        
    }
    
    func setupCollectionViewController() {
        
        // Add all subViews
        
        view.addSubview(imageView)
        view.addSubview(galleryCollectionView)
        
        // Constraints
        NSLayoutConstraint.activate([imageView.topAnchor.constraint(equalTo: view.topAnchor),
                                     imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     imageView.heightAnchor.constraint(equalToConstant: 125)
            ])
        
        NSLayoutConstraint.activate([galleryCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                     galleryCollectionView.heightAnchor.constraint(equalToConstant: 773),
                                     galleryCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width)])
    }
    
}

extension GalleryCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GalleryCell.reuseIdentifier, for: indexPath) as! GalleryCell
        
        return cell
    }
}

extension GalleryCollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension GalleryCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 125)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
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
