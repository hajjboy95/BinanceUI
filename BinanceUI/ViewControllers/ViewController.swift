//
//  ViewController.swift
//  BinanceUI
//
//  Created by El-habbash, Ismail on 27/08/2018.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    fileprivate var selectedItemIndex = 0
    
    lazy var selectedIndexCallBack: ((IndexPath) -> Void) = {
        (indexPath: IndexPath) -> Void in
        self.selectedItemIndex = indexPath.row
    }
    
    @IBOutlet weak var topBarView: IEHTopBarView! {
        didSet {
            topBarView.collectionViewDataSource = TopBarUICollectionViewDataSource()
            let uicollectionFlowLayout = TopBarUICollectionViewFlowLayout()
            uicollectionFlowLayout.selectedIndexPath = selectedIndexCallBack
            topBarView.collectionViewFlowLayout = uicollectionFlowLayout
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

