//
//  HomeViewController.swift
//  BinanceUI
//
//  Created by El-habbash, Ismail on 27/08/2018.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    
    fileprivate var selectedItemIndex = 0
    fileprivate var homeDataSource = CoinMarketInfo.coinMarketInfoFactory()

    lazy var selectedIndexCallBack: ((IndexPath) -> Void) = {
        self.selectedItemIndex = $0.row
        self.collectionView.scrollToItem(at: $0, at: .centeredVertically, animated: true)
    }
    
    @IBOutlet weak var topBarView: IEHTopBarView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTopBarView()
        setupCollectionView()
    }
    
    private func setupTopBarView() {
        let uicollectionFlowLayout = TopBarUICollectionViewFlowLayout()
        uicollectionFlowLayout.selectedIndexPathCallback = selectedIndexCallBack

        let topBarDataSource = TopBarUICollectionViewDataSource()
        topBarDataSource.headerTitles = homeDataSource.map { $0.key }

        topBarView.collectionViewDataSource = topBarDataSource
        topBarView.collectionViewFlowLayout = uicollectionFlowLayout
    }
    
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tableViewCollectionViewCell", for: indexPath) as? TableViewCollectionViewCell else { return UICollectionViewCell() }
        
        let selectedDataSourceForIndex = homeDataSource[selectedItemIndex].value
        cell.dataSource = selectedDataSourceForIndex
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homeDataSource.count
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: collectionView.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var visibleRect = CGRect()
        visibleRect.origin = collectionView.contentOffset
        visibleRect.size = collectionView.bounds.size

        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        guard let indexPath = collectionView.indexPathForItem(at: visiblePoint) else { return }
        
        topBarView.highlightCell(at: indexPath)
    }
}
