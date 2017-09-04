//
//  ExtendViewController.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/11.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit

/*
 类，枚举，结构体都能实现协议
 */
protocol ExampleProtocol {
    var simpleDescription: String {get}
    mutating func adJust()//mutating关键字表示可以改变结构体
}

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "simpleDescription"
    mutating func adJust() {//如果要修改结构体的属性，在方法前添加mutating关键字，类中不用添加，因为类中的方法本身就能修改属性
        simpleDescription += "adjust"
    }
}

//此处的error是协议，而不是类型,所以构造方法没有rawvalue
enum PrinterError: Error {
    case OutOfPaper
    case NoToner
    case OnFire
}

enum Type: Int{
    case one
}

//泛型
enum OptionalValue<Wrapped>{
    case None
    case Some(Wrapped)
}

class ExtendViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
//        var option: OptionalValue<Int> = OptionalValue.None
//        option = OptionalValue.Some(100)
//        print("option = \(option)")
        
      _ =  anyCommonElements([1,2,4], [7,3])
    }
    func send(job: Int, toPrinter printerName: String) throws -> String {
        if printerName == "Never Has Toner" {
            throw PrinterError.NoToner
        }
        return "Job sent"
    }
    
    /*
     可以使用do-catch来抛出异常
     do 的代码块中使用try来标记会抛出异常的代码
     */
    func throwsWithDocatch() {
        do {
            let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
            print(printerResponse)
        } catch {
            print(error)
        }
    }
    /*
     另一种抛出异常的方式是try?,
     */
    func otherThrow() {
        //如果函数抛出异常的话，结果为nil，否则就是函数返回值
        let _ = try? send(job: 1884, toPrinter: "Mergenthaler")
        let _ = try? send(job: 1885, toPrinter: "Never Has Toner")
    }
    
    var fridgeIsOpen = false
    let fridgeContent = ["milk", "eggs", "leftovers"]
    func fridgeContains(_ food: String) -> Bool {
        fridgeIsOpen = true
        defer {//函数中最后执行的代码，无论该函数跑步抛出异常
            fridgeIsOpen = false
        }
        let result = fridgeContent.contains(food)
        return result
    }
    
    func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
        where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
            for lhsItem in lhs {
                for rhsItem in rhs {
                    if lhsItem == rhsItem {
                        return true
                    } }
            }
            return false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
