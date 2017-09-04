//
//  SecondViewController.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/11.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        //        let addOne = makeIncrementer()
        //        let num = addOne(3)
        //        print("num=\(num)")
        //函数作为参数
        //      let bool = hasAnyMatches(list: [1,-1,2-4,5,-8]) { (num) -> Bool in
        //            return num > 0
        //        }
        //        print("bool = \(bool)")
        //swift 可以作类型检查，in 是参数，返回值类型和函数体的分割，如下已经能确定返回值是整数，所以可以省略返回值类型
        //        let list = returnSingle(list: [2,4,6,-1,5,7]) { num in
        //            num / 2 == 0 ? 0 : num
        //        }
        //        print("list = \(list)")
        
        //3.4函数作为唯一参数,
        //在闭包中所用到的值都是参数，swift不仅可以判断返回值的类型，也可以判断参数类型
        function { $0 > $1}
        //等价于
        function { (num1, num2) -> Bool in
          return num1 > num2
        }
        
        function(8) { (num1, num2) -> Bool in
           return num1 > num2
        }
        
        function(8) {
           $0 > $1
        }
    }
    
    //3.3函数是第一等类型，函数可以作为返回值
    func makeIncrementer() -> (Int) -> Int {
        func addOne(nmuber: Int) -> Int{
            return nmuber + 1
        }
        return addOne
    }
    //3.4函数作为参数
    func hasAnyMatches(list: [Int], function: (Int) -> Bool) -> Bool {
        var sum = 0
        (list).forEach { (num) in
            if function(num) {
                sum += num
            }
        }
        return sum > list.last!
    }
    //3.5重写闭包，对所有奇数返回0
    func returnSingle(list:[Int],_ function: (Int) -> Int) -> [Int] {
        var single = [Int]()
        (list).forEach { (num) in
            if function(num) != 0 {
                single.append(num)
            }
        }
        return single
    }
    
    //当函数作为唯一参数时，可以忽略掉括号
    func function(_ function: (Int,Int) -> Bool) {
        if function(3, 5) {
            return
        }
    }
    func function(_ num: Int,function: (Int,Int) -> Bool) {
        if function(3, 5) {
           print("num = \(num)")
        }
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
