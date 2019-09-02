//
//  NewsCell.swift
//  KnollwoodVilla
//
//  Created by Flavius on 9/2/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell, ReuseIdentifiable {
    
    let label = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .black
        
        self.contentView.addSubview(label)
        
        NSLayoutConstraint.activate([label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                                     label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
