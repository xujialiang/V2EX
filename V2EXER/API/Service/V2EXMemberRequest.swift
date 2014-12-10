//
//  V2EXMemberRequest.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/10.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class V2EXMemberRequest: V2EXRequestBase {
    
    init(username:String){
        super.init(method: "member/show.json?username=\(username)", modelName: "V2EXMemberModel");
    }
    
    init(userid:String){
        super.init(method: "member/show.json?id=\(userid)", modelName: "V2EXMemberModel");
    }
    
}