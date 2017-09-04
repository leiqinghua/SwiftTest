//
//  EnmuViewController.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/11.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit

enum Rank: Int {
    case Ace = 1//默认是从0开始，可以显示进行改变,赋一个初值
    case Two,Three,Four,Five,Six,Seven, Eight, Nine, Ten
    case Jack,Queen,King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit : String{
    case Spades, Hearts, Diamonds, Clubs
}
/*
 //每一个枚举值都有一个rawValue，hashValue.而hashvalue是int类型，默认为0，当声明的类型为int时就可以改变默认值，如第一个枚举Rank
 rawValue 是根据声明的类型不同而不同，声明为string类型，就是string类型，在创建的时候使用构造函数，传入的参数跟声明的类型是一致的
 */



//结构体,和类很相似，有属性，方法，和构造器，结构体是传值，类是传引用
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of )"
    }
}

class EnmuViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let ace = Rank.Ace
        let aceStr = ace.simpleDescription()
        let aceRawValue = ace.rawValue
        print("aceStr = \(aceStr),aceRawValue = \(aceRawValue) ")
        //构造器使枚举值和原始值之间进行转换
        let _ = Rank(rawValue: 3)
        
        let spades = Suit.Spades
        let spadesValue = spades.hashValue
        print("spadesValue=\(spadesValue)")
        
        let suit = Suit(rawValue: "Hearts")
        print("suit==\(String(describing: suit?.rawValue)), suitRawValue = \(String(describing: suit?.hashValue))")
        
        //结构体,构造方法会传入每一个值
        let _ = Card(rank: Rank.Five, suit: Suit.Hearts)
        
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
