//
//  UIImageTests.swift
//  KnollwoodVillaTests
//
//  Created by Flavius on 8/24/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

@testable
import KnollwoodVilla

import XCTest

class UIColorTests: XCTestCase {

    func testColorsExist() {
        XCTAssertNotNil(UIImage.galleryTabBarIcon)
        XCTAssertNotNil(UIImage.contactTabBarIcon)
        XCTAssertNotNil(UIImage.newsTabBarIcon)
        XCTAssertNotNil(UIImage.homeTabBarIcon)
    }

}
