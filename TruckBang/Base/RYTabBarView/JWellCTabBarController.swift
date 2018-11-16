//
//  JWellCTabBarController.swift
//  JWellCarrierTreasure
//
//  Created by ya ran on 2018/11/15.
//  Copyright © 2018 Ryan. All rights reserved.
//

import UIKit
import ESTabBarController_swift
class JWellCTabBarController: ESTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 加载底部tabbar样式
        let tabBarController = ESTabBarController()
        tabBarController.delegate = delegate
        tabBarController.title = "Irregularity"
        tabBarController.tabBar.shadowImage = UIImage(named: "transparent")
        tabBarController.shouldHijackHandler = {
            tabbarController, viewController, index in
            if index == 2 {
                return true
            }
            return false
        }
        tabBarController.didHijackHandler = {
            [weak tabBarController] tabbarController, viewController, index in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                //                let vc = FMPlayController()
                //                tabBarController?.present(vc, animated: true, completion: nil)
            }
        }
        
        let homeVC = JWellTHomeViewController()
        let waybillVC = JWellTWaybillViewController()
        let findGoodsVC = JWellTFindGoodsViewController()
        
        let mallVC = JWellTMallViewController()
        let myVC = JWellTMyViewController()
        
        homeVC.tabBarItem = ESTabBarItem.init(RYIrregularityBasicContentView(), title: "首页", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        waybillVC.tabBarItem = ESTabBarItem.init(RYIrregularityBasicContentView(), title: "运单", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
        findGoodsVC.tabBarItem = ESTabBarItem.init(RYIrregularityContentView(), title: nil, image: UIImage(named: "tab_play"), selectedImage: UIImage(named: "tab_play"))
        mallVC.tabBarItem = ESTabBarItem.init(RYIrregularityBasicContentView(), title: "商城", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
        myVC.tabBarItem = ESTabBarItem.init(RYIrregularityBasicContentView(), title: "我的", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        let homeNav = RYNavigationController.init(rootViewController: homeVC)
        let waybillNav = RYNavigationController.init(rootViewController: waybillVC)
        let findGoodsNav = RYNavigationController.init(rootViewController: findGoodsVC)
        let mallNav = RYNavigationController.init(rootViewController: mallVC)
        let myNav = RYNavigationController.init(rootViewController: myVC)
        homeVC.title = "首页"
        waybillVC.title = "运单"
        findGoodsVC.title = "找货"
        mallVC.title = "商城"
        myVC.title = "我的"
        self.viewControllers = [homeNav, waybillNav, findGoodsNav, mallNav, myNav]
        if let tabBarItem = waybillVC.tabBarItem as? ESTabBarItem {
                tabBarItem.badgeValue = "99+"
            }

        // Do any additional setup after loading the view.
    }

}
