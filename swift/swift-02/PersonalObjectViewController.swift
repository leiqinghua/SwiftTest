//
//  PersonalObjectViewController.swift
//  swift-02
//
//  Created by 雷清华 on 2017/7/17.
//  Copyright © 2017年 Leiqinghua. All rights reserved.
//

import UIKit

class PersonalObjectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = News(dict: ["title":"hahah","digest":"erjer","replyCount":18])
        
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
