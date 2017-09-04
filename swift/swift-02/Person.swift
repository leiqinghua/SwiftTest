//
//  Person.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/11.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name = ""
    var age = 10
    
    override init() {
        super.init()
    }
    //初始化
    init(na: String, ag: Int) {
        name = na
        age = ag
    }
    //便利初始化
    convenience init(na: String) {
        self.init(na: na, ag: 20)
        print("name = \(name), age = \(age)")
    }
    //在删除对象之前做的操作，相当于oc中的Delloc
    deinit {
        print("对象要删除了")
    }
}
