//
//  V2EXService.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/9.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation
import Alamofire


class V2EXService: NSObject {
    
    /**
    最热主题
    
    :returns: 相当于首页右侧的 10 大每天的内容。
    */
    func fetchHotTopics() -> Array<V2EXHotModel>{
        var result:Array = NSArray();
        
        
        self.fetchRequest(V2EXHotRequest<V2EXHotModel>(), success: { (JSONDIC) -> () in
            
            
            
            
            },failed: { (error) -> () in
           
                
                
        });
        
        
        
        return result as Array;
    }
    
    /**
    最新主题
    
    :returns: 相当于首页的“全部”这个 tab 下的最新内容。
    */
    func fetchLatestTopics() -> NSArray{
        var result:NSArray = NSArray();
        
        return result as Array;
        
    }
    
    /**
    节点信息
    
    :returns: 获得指定节点的名字，简介，URL 及头像图片的地址。
    */
    func fetchNodes() -> NSArray {
        var result:NSArray = NSArray();
        
        return result as Array;
    }
    
    /**
    用户主页
    
    :returns: 获得指定用户的自我介绍，及其登记的社交网站信息。
    */
//    func fetchMemberInfo() -> NSArray {
//        var result:NSObject = NSArray();
//        
//        return result as Array;
//    }
    
    
    
    func fetchRequest<T:V2EXBaseModel>(req:V2EXRequestBase<T>, success:(JSONDIC:NSDictionary)->(), failed:(error:NSError)->()){
        
        
        Alamofire.request(.GET, req.requestUrl as String)
            .responseJSON { (request, response, JSON, error) in
                println(JSON);
                if error == nil{
                    var result = req.DataParse(JSON as AnyObject!);
                    
                    success(JSONDIC: JSON as NSDictionary);
                }else{
                    failed(error:error!);
                }
                
        }
        
    }
}