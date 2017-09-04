//
//  Video1ViewController.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/11.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit

class Video1ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        //        arrayFunction()
        dictFunction()
    }
    func arrayFunction() {
        //let 表示不可变，var表示可变数组
        /// 如果定义数组时，元素的类型不一致，该数组类型为any，通常在开发时在同一数组中不建议放不同数据类型的元素
        let array1 = ["zhangsan","list1",11] as [Any]
        for item in array1 {
            print("item=\(item)")
        }
        
        /// 如果对象没有初始化，则不能进行添加操作
        var array2: [String]
        array2 = [String]()
        //添加元素
        array2.append("111")
        array2.append("2222")
        //输出数组的容量
        print("array2 = \(array2.capacity)")
        //删除并保持容量
        array2.removeAll(keepingCapacity: true)
        //如果保持容量删除数据后，再次追加，就会在原有的容量基础上添加数据，当容量超出现有容量，就会以2倍增长。
        //如果删除时没有保存容量，那么在追加第一个数据时就是一个容量，添加数据前没有容量，当追加的数据超出当前容量以2倍增长
        for i in 0...10 {
            array2.append("\(i)")
            print("\(array2),\(array2.capacity)")
        }
    }
    /// 字典的练习
    func dictFunction() {
        let dict = ["name":"zhangsan","title":"boss","age":11] as [String : Any]
        for (k,v) in dict {
            print("key = \(k), value = \(v)")
        }
        
        var dict2 = [String:Any]()
        //如果key已经存在，会覆盖之前的值，如果不存在，就会新建
        dict2["name"] = "老王"
        dict2["greet"] = "hello"
//        print("dict2 = \(dict2)")
//        dict2.removeValue(forKey: "name")//删除了name:这一键值对
//       print("dict2 = \(dict2)")
        
        //更新值
        for (key,_) in dict2 {
            dict2.updateValue("hahha", forKey: key)
        }
        print("dict2 = \(dict2)")
        
        //声明字典
        let dict3:[String:Any]
        
        dict3 = [String:Any]()
        //或者
        let _ = [String:Any]()
        
        let _ = ["name":"xiaozhang","age":12] as [String:Any]
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
