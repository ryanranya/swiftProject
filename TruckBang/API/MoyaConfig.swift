//
//  MoyaConfig.swift
//  JWellCarrierTreasure
//
//  Created by Ryan on 2018/11/8.
//  Copyright © 2018 Ryan. All rights reserved.
//

import Foundation

let Moya_baseURL = "http://10.130.0.128:13003"

/// 定义基础域名(开发服务器)


///// 定义基础域名(测试服务器)
//let Moya_baseURL = "http://10.130.0.128:13003"
//
///// 定义基础域名(正式服务器)
//let Moya_baseURL = "http://10.130.0.128:13003"


/// 定义返回的JSON数据字段
let RESULT_CODE = "success"      //状态码

let RESULT_MESSAGE = "message"  //错误消息提示


/*  错误情况的提示
 {
 "flag": "0002",
 "msg": "手机号码不能为空",
 "lockerFlag": true
 }
 **/
