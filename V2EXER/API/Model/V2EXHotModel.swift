//
//  V2EXHotModel.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/9.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class V2EXHotModel: V2EXBaseModel {
    var id:NSString = "";
    var title:NSString = "";
    var url:NSString = "";
    var content:NSString = "";
    var content_rendered:NSString = "";
    var replies:NSString = "";
    var member:V2EXMemberModel?;
    var node:V2EXNodeModel?;
    var created:NSString = "";
    var last_modified:NSString = "";
    var last_touched:NSString = "";
    
    required init() {
        super.init();
    }
    
}