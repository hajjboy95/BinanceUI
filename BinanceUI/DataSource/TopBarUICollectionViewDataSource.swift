//
//  TopBarUICollectionViewDataSource.swift
//  BinanceUI
//
//  Created by El-habbash, Ismail on 28/08/2018.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit

enum Constants {
    static let numberOfTabs = 4
    static let numberOfCellsToDisplayForScreen = 4
    static let edgeInsets = 10
}

final class TopBarUICollectionViewDataSource: NSObject, UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Constants.numberOfTabs
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TopBarCollectionViewCell
        return cell
    }
}
