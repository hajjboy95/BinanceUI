//
//  IEHTopBarView.swift
//  BinanceUI
//
//  Created by El-habbash, Ismail on 28/08/2018.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit

class TopBarCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var currencyLabel: UILabel!
    var isTapped: Bool = false
}

class IEHTopBarView: UIView {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.frame = CGRect.zero
        cv.register(UINib(nibName: "TopBarCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        cv.backgroundColor = UIColor.binanceGrey
        return cv
    }()
    
    var collectionViewDataSource: UICollectionViewDataSource? {
        didSet { collectionView.dataSource = collectionViewDataSource }
    }

    var collectionViewFlowLayout: UICollectionViewDelegateFlowLayout? {
        didSet { collectionView.delegate = collectionViewFlowLayout }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpViews()
    }
    
    convenience init(frame: CGRect,
                     collectionViewDataSource: UICollectionViewDataSource,
                     topBarUICollectionViewFlowLayout: UICollectionViewDelegateFlowLayout) {
        self.init(frame: frame)
        self.collectionViewDataSource = collectionViewDataSource
        self.collectionViewFlowLayout = topBarUICollectionViewFlowLayout
    }
    
    
    private func setUpViews() {
        let views = ["cv": collectionView]
        addSubview(collectionView)
        let horizontalContraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[cv]-0-|", options: [], metrics: nil, views: views)
        let verticalContraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[cv]-0-|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activate(horizontalContraints + verticalContraints)
    }
}
