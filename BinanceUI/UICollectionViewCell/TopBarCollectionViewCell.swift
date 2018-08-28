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
                UIView.animate(withDuration: 0.2) {
                    self.currencyLabel.textColor = UIColor.binanceGold
                    self.bottomLineView.backgroundColor = UIColor.binanceGold
                }
            } else {
                currencyLabel.textColor = UIColor.white
                bottomLineView.backgroundColor = UIColor.binanceGrey
            }
        }
    }
}
