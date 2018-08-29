//
//  TopBarUICollectionViewFlowLayout.swift
//  BinanceUI
//
//  Created by Ismail El-habbash on 8/28/18.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit

final class TopBarUICollectionViewFlowLayout: NSObject, UICollectionViewDelegateFlowLayout {
    
    var selectedIndexPath: ((IndexPath) -> ())?
    var selectedItemIndexPath = IndexPath(item: 0, section: 0)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = UIScreen.main.bounds.width / CGFloat(Constants.numberOfCellsToDisplayForScreen) - CGFloat(Constants.edgeInsets)
        return CGSize(width: cellWidth, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(Constants.edgeInsets)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedIndexPath?(indexPath)
        
        if let prevCell = collectionView.cellForItem(at: selectedItemIndexPath) as? TopBarCollectionViewCell {
            prevCell.isTapped = false
        }
        
        if let tappedCell = collectionView.cellForItem(at: indexPath) as? TopBarCollectionViewCell {
            tappedCell.isTapped = true
        }
        
        selectedItemIndexPath = indexPath
        print("ItemSelected = \(indexPath.row)")
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        guard let displayedCell = cell as? TopBarCollectionViewCell else { return }
        displayedCell.isTapped = selectedItemIndexPath == indexPath ? true : false
    }
}
