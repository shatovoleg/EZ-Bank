//
//  Extensions.swift
//  EZ Bank
//
//  Created by Oleg Shatov on 14.03.2022.
//

import UIKit

extension UIViewController {
    func setStatusBar() {
//        let statusBarSize = UIApplication.shared.statusBarFrame.size //deprecated in iOS 13
        let statusBarSize = view.window?.windowScene?.statusBarManager?.statusBarFrame.size ?? CGSize()
        let frame = CGRect(origin: .zero, size: statusBarSize)
        let statusBarView = UIView(frame: frame)
        
        statusBarView.backgroundColor = appColor
        view.addSubview(statusBarView)
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
