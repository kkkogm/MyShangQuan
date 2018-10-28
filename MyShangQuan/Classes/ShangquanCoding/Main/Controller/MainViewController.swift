//
//  MainViewController.swift
//  MyShangQuan
//
//  Created by o g m on 2018/10/28.
//  Copyright © 2018 o g m. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
            self.view.backgroundColor = .red
        
        let homeVc = HomeViewController()
        homeVc.title = "shitua"
        homeVc.view.backgroundColor = UIColor.green
        let homeNav = UINavigationController(rootViewController: homeVc)
        homeNav.setNavigationBarHidden(true, animated: true)
//        homeNav.navigationBar.barTintColor = UIColor.orange
        
        let vipAreaVc = UIViewController()
        vipAreaVc.title = "视图2"
        vipAreaVc.view.backgroundColor = UIColor.yellow
        let vipAreaNav = UINavigationController(rootViewController: vipAreaVc)
        
        
        let shopRecVc = UIViewController()
        shopRecVc.title = "视图3"
        shopRecVc.view.backgroundColor = UIColor.orange
        let shopRecNav = UINavigationController(rootViewController: shopRecVc)
        
        
        let proFileVc = UIViewController()
        proFileVc.title = "视图4"
        proFileVc.view.backgroundColor = UIColor.blue
        let proFileNav = UINavigationController(rootViewController: proFileVc)
        
        
        
        
//        //tabbarController
//        let tabbarController = UITabBarController()
        //底部bar背景颜色
        self.tabBar.barTintColor = UIColor.white
        
        self.viewControllers = [homeNav,vipAreaNav,shopRecNav,proFileNav]
        //默认被选中
        self.selectedIndex = 0
        
        self.tabBar.isUserInteractionEnabled = true
        self.tabBar.backgroundColor = UIColor.white
        self.tabBar.backgroundImage = UIImage(named: "")
        self.tabBar.selectionIndicatorImage = UIImage(named: "")
        
        // 设置标题，未选中状态图标，选中状态图标
        let homeBar = UITabBarItem(title: "首页", image: UIImage(named: "ic_home_default"), selectedImage: UIImage(named: "ic_home_select"))
        homeVc.tabBarItem = homeBar
        let vipAreabar = UITabBarItem(title: "第2视图", image: UIImage(named: "ic_vip_default"), selectedImage: UIImage(named: "ic_vip_select"))
        vipAreaVc.tabBarItem = vipAreabar
        let shopRecBar = UITabBarItem(title: "第3视图", image: UIImage(named: "ic_good_shop_default"), selectedImage: UIImage(named: "ic_good_shop_select"))
        shopRecVc.tabBarItem = shopRecBar
        let proFileBar = UITabBarItem(title: "第4视图", image: UIImage(named: "ic_vip_center_default"), selectedImage: UIImage(named: "ic_vip_center_select"))
        proFileVc.tabBarItem = proFileBar
        
        
        // 设置字体颜色
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.orange], for: UIControl.State.selected)
        // 设置字体大小
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 8.0)], for:
            .normal)
        // 设置字体偏移
        UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0.0, vertical: -5.0)
        
        // 设置图标选中时颜色
//        UITabBar.appearance().tintColor = UIColor.orange
        
        
    
    }
}
