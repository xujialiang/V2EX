//
//  V2EXRequestBase.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/9.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation


class V2EXRequestBase:NSObject {
    
    var api_method:NSString!;
    
    var requestUrl:NSString!{
        get{
            return V2EX_API_URL+self.api_method;
        }
    }
    
    var modelName:NSString!;

    
    init(method:NSString,modelName:String) {
        super.init();
        self.api_method=method;
        self.modelName=modelName;
    }
    
    func DataParse(dicData:AnyObject) -> AnyObject{

        var obj:V2EXBaseModel.Type = NSClassFromString("V2EXER."+self.modelName) as V2EXBaseModel.Type;
        var result = obj();
        
        return result.DataConvert(dicData);
        
    }
    
    
}