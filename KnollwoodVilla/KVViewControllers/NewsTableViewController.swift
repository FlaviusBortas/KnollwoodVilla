//
//  NewsTableViewController.swift
//  KnollwoodVilla
//
//  Created by Flavius on 8/22/19.
//  Copyright © 2019 Flavius. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    var data: [Int] = Array(0..<10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 125
        tableView.backgroundColor = .yellow
        self.tableView.register(NewsCell.self, forCellReuseIdentifier: NewsCell.reuseIdentifier)
        
    }
}

// Table View Data Source
extension NewsTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsCell.reuseIdentifier, for: indexPath) as! NewsCell
        
        cell.label.text = "\(data[indexPath.row])"
        cell.label.backgroundColor = .green
        
        return cell
    }
    
}
