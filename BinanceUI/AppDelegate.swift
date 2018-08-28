//
//  AppDelegate.swift
//  BinanceUI
//
//  Created by El-habbash, Ismail on 27/08/2018.
//  Copyright © 2018 El-habbash, Ismail. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // MARK: Navigation Bar Customisation
        
        // To change background colour.
        UINavigationBar.appearance().barTintColor = UIColor.binanceGrey
        // To change colour of tappable items.
        UINavigationBar.appearance().tintColor = .white
        
        // To apply textAttributes to title i.e. colour, font etc.
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor.binanceTitle,
                                                            .font : UIFont.boldSystemFont(ofSize: 18.0)]
        // To control navigation bar's translucency.
        UINavigationBar.appearance().isTranslucent = false
        
        // Remove border in navigationBar
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)

        return true
    }
}

