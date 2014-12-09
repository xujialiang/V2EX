//
//  V2EXBaseModel.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/9.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class V2EXBaseModel:NSObject{
    
    required override init() {
        super.init();
    }
    
    func DataConvert(dicdata: AnyObject) {
        
        func Process(key:NSString, val:AnyObject){
            if val.isKindOfClass(NSDictionary){
                var classname_small = key.lowercaseString;
                println(classname_small);
                var classname_firstletter = classname_small.substringToIndex(advance(classname_small.startIndex,1)).uppercaseString;
                var classname_otherletters = classname_small.substringFromIndex(advance(classname_small.startIndex,1)).lowercaseString;
                
                var model_fullname="V2EXER.V2EX"+classname_firstletter+classname_otherletters+"Model";
                
                var obj :V2EXBaseModel.Type = NSClassFromString(model_fullname) as V2EXBaseModel.Type;
                var objinstance = obj();
                
                objinstance.DataConvert(val as NSDictionary);
                println(val);
                self.setValue(objinstance, forKey: key as String);
                
                
                
                
            }else if(val.isKindOfClass(NSString)){
                self.setValue(val, forKey: key as String);
            }else if(val.isKindOfClass(NSNumber)){
                self.setValue("\(val)", forKey: key as String);
            }
        }
        
        if dicdata.isKindOfClass(NSArray){
            for item in dicdata as NSArray{
                for key in item.allKeys{
                    println(key);
                    var val: AnyObject! = item[key as String];
                    Process(key as String, val);
                }
            }
            
        }else if(dicdata.isKindOfClass(NSDictionary)){
            for key in dicdata.allKeys{
                println(key);
                var val: AnyObject! = dicdata[key as String];
                Process(key as String, val);
            }
        }
        
        
        
    }
}