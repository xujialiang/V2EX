//
//  V2EXRequestBase.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/9.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation


class V2EXRequestBase<T:V2EXBaseModel>:NSObject {
    
    var api_method:NSString!;
    
    var requestUrl:NSString!{
        get{
            return V2EX_API_URL+self.api_method;
        }
    }
    

    
    init(method:NSString) {
        super.init();
        self.api_method=method;
    }
    
    func DataParse(dicData:AnyObject) -> AnyObject{
        var result = T();
        result.DataConvert(dicData);
        return result;
    }
    
    
}