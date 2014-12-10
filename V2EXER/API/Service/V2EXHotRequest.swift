//
//  V2EXHotRequest.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/9.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class V2EXHotRequest: V2EXRequestBase {
    init(){
        super.init(method: "topics/hot.json",modelName: "V2EXHotModel");
    }
}