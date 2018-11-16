//
//  RYNavigationController.swift
//  RYSwift
//
//  Created by Ryan on 2018/11/7.
//  Copyright © 2018 Ryan. All rights reserved.
//

import UIKit

class RYNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBarAppearence()
    }
}
    func setNavBarAppearence()
    {
        // 设置导航栏默认的背景颜色
        WRNavigationBar.defaultNavBarBarTintColor = UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1)
        // 设置导航栏所有按钮的默认颜色
        WRNavigationBar.defaultNavBarTintColor = UIColor.withHex(hexString: "#FF8C00")
        // 设置导航栏标题默认颜色
        WRNavigationBar.defaultNavBarTitleColor = .black
        // 统一设置状态栏样式
//        WRNavigationBar.defaultStatusBarStyle = .lightContent
        // 如果需要设置导航栏底部分割线隐藏，可以在这里统一设置
        WRNavigationBar.defaultShadowImageHidden = true
        
    }
extension RYNavigationController
{
    override func pushViewController(_ viewController: UIViewController, animated: Bool)
    {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
}
