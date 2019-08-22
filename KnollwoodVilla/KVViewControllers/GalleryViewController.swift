//
//  GalleryView.swift
//  Knollwood Villa
//
//  Created by Flavius on 5/13/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController  {

    let pictures = [UIImage]()
    
    @IBOutlet weak var galleryCollectionView: UICollectionView!
   
}


// MARK: - Collection View DataSource/Delegate
extension GalleryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = galleryCollectionView.dequeueReusableCell(withReuseIdentifier: "picture", for: indexPath)
        cell.backgroundColor = UIColor(red: 987.2, green: 987.2, blue: 987.2, alpha: 0)
        
        return cell
    }
    
}
