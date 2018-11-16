//
//  JWellTHomePageBannerModel.swift
//  TruckBang
//
//  Created by ya ran on 2018/11/16.
//  Copyright © 2018 ya ran. All rights reserved.
//

import UIKit
import HandyJSON
class JWellTHomePageBannerModel: HandyJSON {
    var orderNumber: Int!
    var title: String!
    var subTitle: String!
    var name: String!
    var creationTime: String!
    var machineType: Int!
    var machineTypeName: String!
    var isActive: Bool!
    var returnUrl: String!
    var bannerPath: String!
    var isSee: Bool!
    var id: Int!
    required init() {}
}


class JWellHomePageBannerDetailModel: Codable {
    
    
    required init(){}
}
