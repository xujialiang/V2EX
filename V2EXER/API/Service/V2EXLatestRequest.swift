//
//  V2EXLatestRequest.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/10.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class V2EXLatestRequest: V2EXRequestBase {
    init(){
        super.init(method: "topics/latest.json",modelName: "V2EXLatestModel");
    }
}