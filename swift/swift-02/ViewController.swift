//
//  ViewController.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/10.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        let lable = "the width is"
        //        let width = 98
        //        //值不会被隐式转换成其他类型，要想转换成其他类型就得显示转换
        //        let swidthLable = lable + String(width)
        //        print("swidthLable=\(swidthLable)")
        //        arrayAndDic()
        //        control()
        //        let nums = calculateStatistics(scores: [2,4,6,1,7,9,0])
        //        print("nums=\(nums)")
        //        let sum = sumOf(numbers: 2,3,5)
        //        print("sum = \(sum)")
        let y = returnFifteen()
        print("y = \(y)")
    }
    //1、使用[]来创建数组和字典
    func arrayAndDic() {
        var list1 = ["lll","ooo","ddd","bbb"]
        list1[1] = "bottle of water"
        var dict = [
            "Malcolm" : "Captain",
            "Kaylee"  : "Mechanic"
        ]
        dict["hahha"] = "mmmddd"
        print("list1=\(list1),dict=\(dict)")
        //创建空的数组和字典
        var emptyArr = [String]()
        var emptyDic = [String : String]()
        emptyArr.append("heheh")
        emptyDic["wo"] = "leiqinghua"
    }
    //2、控制流
    /*
     swift中循环：while，forin，repeat-while，foreach
     */
    func control() {
        let nickName:String? = nil
        let fullName:String = "leiqinghua"
        //"??"如果nickname可选值为空，就用fullname代替
        let _ = "hi \(nickName ?? fullName)"
        
        //        //case
        //        let vegetable = "merry"
        //        //找到匹配的语句后会跳出swich语句，所以不用写break
        //        switch vegetable {
        //        case "celery":
        //            print("Add some raisins and make ants on a log")
        //        case "celeryu", "merry":
        //            print("woshi shei ni shi shei")
        //        case let x where x.hasSuffix("pepper"):
        //            print("is it a spicy \(x)")
        //        default://default语句必须添加
        //            //如果上述条件都不满足，那么会执行如下方法
        //            print("zheshigonggongde")
        //        }
        
        //遍历字典
        let dict = [
            "prime":[2,3,4,5],
            "fibonacci" : [1,2,3,7,8,9],
            "square":[1,4,9,16,34]
        ]
        var largest = 0
        for (_,value) in dict {
            for number in value {
                if number > largest {
                    largest = number
                }
            }
        }
        print("largest=\(largest)")
        //repeat - while
        var m = 2
        repeat{
            m = m * 2
        }while m < 100//只要m小于100就重复
        print("m=\(m)")
    }
    //3.函数和闭包
    func bibao() {
        
    }
    //3.1定义元祖
    func calculateStatistics(scores:[Int]) -> (min:Int,max:Int,sum :Int){
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for num in scores {
            if num < min {
                min = num
            }else if num > max{
                max = num
            }
            sum = sum + num
        }
        return(min,max,sum)
    }
    //3.2函数可以带有可变个参数
    func sumOf(numbers:Int...) -> Int {
        var sum = 0
        (numbers).forEach { (num) in
            sum += num
        }
        return sum
    }
    
    func info(messages: String...) -> String {
        var info:String = ""
        (messages).forEach { (message) in
            info += message
        }
        return info
    }
    //计算平均值的方法
    func average(numbers: Int...) -> Float{
        var aver:Float = 0
        var sum = 0
        (numbers).forEach { (num) in
            sum += num
        }
        aver = Float(sum) / Float(numbers.count)
        return aver
    }
    //3.3嵌套函数,被嵌套的函数可以访问外侧函数的变量，用来重构太长或太复杂的函数
    func returnFifteen() -> Int {
        var y = 10
        func add(){
            y += 5
        }
//        add()//必须得调用函数
        return y
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

