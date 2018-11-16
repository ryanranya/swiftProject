//
//  JWellTHomePageBanner.swift
//  TruckBang
//
//  Created by ya ran on 2018/11/16.
//  Copyright © 2018 ya ran. All rights reserved.
//

import UIKit
import HandyJSON
class JWellTHomePageBannerNetworking: NSObject {
    
}

extension JWellTHomePageBannerNetworking{
    static func homePageBanner(){
        var parDict: [String: Any] = Dictionary()
        parDict["type"] = "7"
        parDict["notifyUserType"] = "8"
        NetWorkRequest(.homePageBanner(parameters: parDict), completion: { (response) -> (Void) in
            
        }) { (failed) -> (Void) in
            
        }
    }
}

