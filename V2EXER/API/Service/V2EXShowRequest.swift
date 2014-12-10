//
//  V2EXShowRequest.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/10.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class V2EXShowRequest: V2EXRequestBase {
    init(name:NSString){
        super.init(method: "nodes/show.json?name=\(name)",modelName: "V2EXShowModel");
    }
}