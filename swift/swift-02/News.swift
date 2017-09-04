//
//  News.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/17.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit

class News: NSObject {

    //自定义属性
    var title: String?
    var digest: String?
    //如果属性为基本数据类型，那么在初始化该对象的时候不会创建这个属性，必须显性初始化这个属性
//    var replyCount:Int?
    var replyCount:Int = 0

    //构造函数，重写
    /// 在构造函数中直接设置数值，属性就不用写”？“
//    override init() {
//        title = "新闻"
//        digest = "今天天气不错"
//    }
    //使用字实例化对象
    init(dict:[NSString : Any]) {
       super.init()
       self.setValuesForKeys(dict as [String : Any])
    }
}
