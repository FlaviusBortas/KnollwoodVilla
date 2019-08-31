//
//  CollectionViewExtentions.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/31/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T:UICollectionViewCell & ReuseIdentifiable>(cellType: T.Type) {
        register(cellType, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
}
