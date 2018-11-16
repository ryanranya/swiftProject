//
//  API.swift
//  JWellCarrierTreasure
//
//  Created by Ryan on 2018/11/8.
//  Copyright © 2018 Ryan. All rights reserved.
//
import Foundation
import Moya

enum API{
    //上传用户头像
    case uploadHeadImage(parameters: [String:Any],imageDate:Data)
    ///首页Banner
    case homePageBanner(parameters:[String: Any])
}

extension API:TargetType{
    var baseURL: URL {
       return URL.init(string:(Moya_baseURL))!
    }
    
    var path: String {
        switch self {
        case .uploadHeadImage( _):
            return "/file/user/upload.jhtml"
        case .homePageBanner:
            return "/api/services/app/message/GetBanners"
        }
    }
    
    var method: Moya.Method {
        
       return .post
    }
    //    这个是做单元测试模拟的数据，必须要实现，只在单元测试文件中有作用
    var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }

    //    该条请API求的方式,把参数之类的传进来
    var task: Task {
//        return .requestParameters(parameters: nil, encoding: JSONArrayEncoding.default)
        switch self {
        //首页Banner
        case let .homePageBanner(parameters):
            return .requestParameters(parameters: parameters, encoding: JSONEncoding.default)
        //图片上传
        case .uploadHeadImage(let parameters, let imageDate):
            ///name 和fileName 看后台怎么说，   mineType根据文件类型上百度查对应的mineType
            let formData = MultipartFormData(provider: .data(imageDate), name: "file",
                                              fileName: "hangge.png", mimeType: "image/png")
            return .uploadCompositeMultipart([formData], urlParameters: parameters)
        }
        
        //可选参数https://github.com/Moya/Moya/blob/master/docs_CN/Examples/OptionalParameters.md
//        case .users(let limit):
//        var params: [String: Any] = [:]
//        params["limit"] = limit
//        return .requestParameters(parameters: params, encoding: URLEncoding.default)
    }
 //请求头
    var headers: [String : String]? {
        return ["Content-Type":"application/json"]
    }
 
}
