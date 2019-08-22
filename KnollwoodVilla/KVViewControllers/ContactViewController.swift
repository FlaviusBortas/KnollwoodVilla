//
//  ContactViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    let contactView: UIView =  {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Contact"
        
        view.addSubview(contactView)
        setupViewController()
    }
    
    func setupViewController() {
        contactView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        contactView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        contactView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        contactView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
    }
}
