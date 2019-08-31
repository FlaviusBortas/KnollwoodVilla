//
//  GalleryCell.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class GalleryCell: UICollectionViewCell, ReuseIdentifiable {
    
    var galleryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        imageView.backgroundColor = .red
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        self.contentView.addSubview(galleryImageView)
        
        NSLayoutConstraint.activate([
            galleryImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            galleryImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            galleryImageView.topAnchor.constraint(equalTo: topAnchor),
            galleryImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
