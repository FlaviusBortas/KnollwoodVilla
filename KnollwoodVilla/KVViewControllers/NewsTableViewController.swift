//
//  NewsTableViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class NewsTableViewController: UIViewController {
    
    let newsTableView: UITableView = {
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: UITableView.Style.plain)
        
        tableView.backgroundColor = UIColor.gray
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = true
        
        return tableView
    }()
    
    let imageView: UIImageView = {
        let banner = UIImageView()
        
        banner.backgroundColor = UIColor.green
        banner.translatesAutoresizingMaskIntoConstraints = false
        
        return banner
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableViewController()
        
    }
    
    func setupTableViewController() {
        view.addSubview(imageView)
        view.addSubview(newsTableView)
        
        NSLayoutConstraint.activate([imageView.topAnchor.constraint(equalTo: view.topAnchor),
                                     imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     imageView.heightAnchor.constraint(equalToConstant: 125)
            ])
        
        NSLayoutConstraint.activate([newsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                     newsTableView.heightAnchor.constraint(equalToConstant: 773),
                                     newsTableView.widthAnchor.constraint(equalToConstant: view.frame.width)])
    }
}
