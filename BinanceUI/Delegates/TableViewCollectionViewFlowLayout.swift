//
//  TableViewCollectionViewFlowLayout.swift
//  BinanceUI
//
//  Created by Ismail El-habbash on 8/29/18.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit

final class TableViewCollectionViewFlowLayout: NSObject, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(Constants.edgeInsets)
    }
}
