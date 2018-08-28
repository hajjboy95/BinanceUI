//
//  TopBarCollectionViewCell.swift
//  BinanceUI
//
//  Created by Ismail El-habbash on 8/28/18.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit

class TopBarCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var bottomLineView: UIView!
    
    var isTapped: Bool = false {
        didSet {
            if isTapped {
                currencyLabel.textColor = UIColor.binanceGold
                bottomLineView.backgroundColor = UIColor.binanceGold
            } else {
                currencyLabel.textColor = UIColor.white
                bottomLineView.backgroundColor = UIColor.binanceGrey
            }
        }
    }

}
