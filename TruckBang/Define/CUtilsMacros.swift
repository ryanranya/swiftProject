//
//  JWellCUtilsMacros.swift
//  JWellCarrierTreasure
//
//  Created by Ryan on 2018/11/8.
//  Copyright © 2018 Ryan. All rights reserved.
//

import UIKit

//MARK -- 获取系统对象
let kApplication = UIApplication.shared
let kAppWindow = UIApplication.shared.delegate?.window

//打印信息
func DLog<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    print("\n>>> \(Date())  \(fileName) (line: \(lineNum)): \(message)\n")
    #endif
}

//MARk -- 获取
let KScreenWidth = UIScreen.main.bounds.size.width
let KScreenHeigth = UIScreen.main.bounds.size.height
let kStatusBarHeight = UIApplication.shared.statusBarFrame.size.height
let kNavBarHeight:(CGFloat) = 44.0
let kTabBarHeight = UIApplication.shared.statusBarFrame.size.height > 20 ? 83 : 49
let kTopHeight = kStatusBarHeight + kNavBarHeight
// iphone X
let isIphoneX = KScreenHeigth == 812 ? true : false
// navigationBarHeight
let navigationBarHeight : CGFloat = isIphoneX ? 88 : 64
// tabBarHeight
let tabBarHeight : CGFloat = isIphoneX ? 49 + 34 : 49
// 屏幕适配 375 6S尺寸
func KSP(V: CGFloat) -> CGFloat{
    return (UIScreen.main.bounds.width / 375) * V;
}
let kTAB_IPHONE_X = isIphoneX ? 34.0 : 0.0


