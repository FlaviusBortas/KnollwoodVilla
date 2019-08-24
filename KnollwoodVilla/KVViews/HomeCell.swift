//
//  HomeCell.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    static var reuseIdentifier: String = "HomeCell"
    
    var homeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        imageView.backgroundColor = .red
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.addSubview(homeImageView)
        
        NSLayoutConstraint.activate([
            homeImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            homeImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            homeImageView.topAnchor.constraint(equalTo: topAnchor),
            homeImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
