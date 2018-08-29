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
    
    lazy var selectedIndexCallBack: ((IndexPath) -> Void) = {
        self.selectedItemIndex = $0.row
    }
    
    @IBOutlet weak var topBarView: IEHTopBarView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTopBarView()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    private func setupTopBarView() {
        topBarView.collectionViewDataSource = TopBarUICollectionViewDataSource()
        let uicollectionFlowLayout = TopBarUICollectionViewFlowLayout()
        uicollectionFlowLayout.selectedIndexPath = selectedIndexCallBack
        topBarView.collectionViewFlowLayout = uicollectionFlowLayout
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tableViewCollectionViewCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: collectionView.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
