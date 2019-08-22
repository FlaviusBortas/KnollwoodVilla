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
    
    weak var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let textlabel = UILabel(frame: .zero)
        textlabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(textlabel)
        
        NSLayoutConstraint.activate([
            self.contentView.centerXAnchor.constraint(equalTo: textlabel.centerXAnchor),
            self.contentView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            self.contentView.centerYAnchor.constraint(equalTo: textlabel.centerYAnchor)
            ])
        
        self.textLabel = textlabel
        self.reset()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.reset()
    }
    
    func reset() {
        self.textLabel.textAlignment = .center
    }
}
