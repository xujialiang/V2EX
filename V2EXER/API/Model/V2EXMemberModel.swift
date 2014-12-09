//
//  V2EXMemberModel.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/9.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class V2EXMemberModel: V2EXBaseModel {
    var id:NSString = "";
    var username:NSString = "";
    var tagline:NSString = "";
    var avatar_mini:NSString = "";
    var avatar_normal:NSString = "";
    var avatar_large:NSString = "";
    
    override func DataConvert(dicdata: AnyObject) {
        super.DataConvert(dicdata);
    }
}