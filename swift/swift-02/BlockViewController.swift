//
//  BlockViewController.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/12.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit
/*
 代码块，是先定义好代码块，将代码块实现出来，然后再调用，调用之前准备好的代码
 闭包：在定义函数的时候，闭包作为参数传入，在调用函数的时候，同时准备代码，然后再执行准备好的代码，而代码块是先定义，先准备好代码后调用。闭包是同时的（调用和准备代码是同时的）
 */

/// 闭包和oc中的block类似，block在oc中是一个匿名函数。
//swift中函数是闭包的特例
class BlockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
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
