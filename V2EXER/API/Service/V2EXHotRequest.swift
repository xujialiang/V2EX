//
//  V2EXHotRequest.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/9.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class V2EXHotRequest<T:V2EXBaseModel>: V2EXRequestBase<T> {
    init(){
        super.init(method: "topics/hot.json")
    }
    
    override func DataParse(dicData:AnyObject) -> AnyObject{
        var result = V2EXHotModel();
        result.DataConvert(dicData);
        return result;
    }
}