//
//  TableViewCollectionViewCell.swift
//  BinanceUI
//
//  Created by Ismail El-habbash on 8/29/18.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit

class TableViewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            setupTableView()
        }
    }
    
    var dataSource = ["One", "Two", "Three"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension TableViewCollectionViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        return cell
    }
    
}

extension TableViewCollectionViewCell: UITableViewDelegate {
    
}
