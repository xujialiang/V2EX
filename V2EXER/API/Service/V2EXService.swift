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
    func fetchHotTopics(success:(result:AnyObject)->(), failed:(error:NSError)->()){
        var result:Array = NSArray();
        
        self.fetchRequest(V2EXHotRequest(), success: success,failed: failed);
        
    }
    
    /**
    最新主题
    
    :returns: 相当于首页的“全部”这个 tab 下的最新内容。
    */
    func fetchLatestTopics(success:(result:AnyObject)->(), failed:(error:NSError)->()){
        self.fetchRequest(V2EXLatestRequest(), success: success,failed: failed);
    }
    
    /**
    节点信息
    
    :returns: 获得指定节点的名字，简介，URL 及头像图片的地址。
    */
    func fetchNodes(name:String,success:(result:AnyObject)->(), failed:(error:NSError)->()) {
        self.fetchRequest(V2EXShowRequest(name: name), success: success,failed: failed);
    }
    
    /**
    用户主页
    
    :returns: 获得指定用户的自我介绍，及其登记的社交网站信息。
    */
    func fetchMemberInfoByUserID(userid:String, success:(result:AnyObject)->(), failed:(error:NSError)->()) {
        self.fetchRequest(V2EXMemberRequest(userid: userid), success: success,failed: failed);
    }
    func fetchMemberInfoByUserName(username:String, success:(result:AnyObject)->(), failed:(error:NSError)->()) {
        self.fetchRequest(V2EXMemberRequest(username: username), success: success,failed: failed);
    }
    
    
    
    func fetchRequest(req:V2EXRequestBase, success:(result:AnyObject)->(), failed:(error:NSError)->()){
        Alamofire.request(.GET, req.requestUrl as String)
            .responseJSON { (request, response, JSON, error) in
                if error == nil{
                    var value: (AnyObject) = req.DataParse(JSON as AnyObject!);
                    success(result: value);
                }else{
                    failed(error:error!);
                }
                
        }
        
    }
}