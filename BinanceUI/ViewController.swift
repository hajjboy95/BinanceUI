//
//  ViewController.swift
//  BinanceUI
//
//  Created by El-habbash, Ismail on 27/08/2018.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var topBar: IEHTopBar! {
        didSet {
            topBar.collectionViewDataSource = TopBarUICollectionViewDataSource()
            topBar.collectionViewFlowLayout = TopBarUICollectionViewFlowLayout()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
