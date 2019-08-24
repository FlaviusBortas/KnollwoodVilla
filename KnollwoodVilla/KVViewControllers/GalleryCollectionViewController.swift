//
//  GalleryViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class GalleryCollectionViewController: UICollectionViewController {
    
    var data: [Int] = Array(0..<5)
    
    let layout = UICollectionViewLayout()
    
    let imageView: UIImageView = {
        let banner = UIImageView()
        
        banner.backgroundColor = .green
        banner.translatesAutoresizingMaskIntoConstraints = false
        
        return banner
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(GalleryCell.self, forCellWithReuseIdentifier:
            GalleryCell.reuseIdentifier)
        
        self.collectionView.alwaysBounceVertical = true
        self.collectionView.backgroundColor = .purple
//        self.collectionView.backgroundColor = .white
        
        setupCollectionViewController()
        
    }
    
    func setupCollectionViewController() {
        
        // Add all subViews
        
        view.addSubview(imageView)
        
//         Constraints
        NSLayoutConstraint.activate([imageView.topAnchor.constraint(equalTo: view.topAnchor),
                                     imageView.widthAnchor.constraint(equalToConstant: view.frame.width),
                                     imageView.heightAnchor.constraint(equalToConstant: 125)
            ])
        
        NSLayoutConstraint.activate([self.collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                     self.collectionView.heightAnchor.constraint(equalToConstant: 300),
                                     self.collectionView.widthAnchor.constraint(equalToConstant: view.frame.width)])
    }
    
}

// Collection View Data Source

extension GalleryCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GalleryCell.reuseIdentifier, for: indexPath) as! GalleryCell
        
        return cell
    }
}

// Collection View Delegate

extension GalleryCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
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
