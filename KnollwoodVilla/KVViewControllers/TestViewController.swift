//
//  TestViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/20/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    var hamburgerMenuIsVisible = false
    
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var ubeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hamburgerBtnTapped(_ sender: Any) {
        
        if !hamburgerMenuIsVisible {
            leadingC.constant = 135
            

            hamburgerMenuIsVisible = true
        } else {
            
            leadingC.constant = 0
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
    }
}
