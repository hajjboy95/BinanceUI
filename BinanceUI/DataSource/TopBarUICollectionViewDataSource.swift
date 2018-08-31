//
//  TopBarUICollectionViewDataSource.swift
//  BinanceUI
//
//  Created by El-habbash, Ismail on 28/08/2018.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit

final class TopBarUICollectionViewDataSource: NSObject, UICollectionViewDataSource  {
    
    var headerTitles: [String]?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return headerTitles?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TopBarCollectionViewCell else { return UICollectionViewCell() }
        cell.currencyLabel.text = headerTitles?[indexPath.row] ?? ""
        return cell
    }
}
