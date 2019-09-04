//
//  ReuseIdentifiable.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/31/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import Foundation

protocol ReuseIdentifiable {
    static var reuseIdentifier: String { get }
}

extension ReuseIdentifiable {
    static var reuseIdentifier: String { return "\(type(of: Self.self))" }
}
