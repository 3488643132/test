//
//  SecViewController.swift
//  导航控制器-代码
//
//  Created by student on 2020/11/23.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .cyan
        self.navigationItem.title = "详情"
        //定义详情页面导航条格式，自定义后，失去两个默认返回方式，需要使用pop
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "doc"), style: .plain, target: self, action: #selector(leftClick))
                self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "camera"), style: .plain, target: self, action: #selector(rightClick))
    }
    //触摸pop这个页面，跳转到上一个页面
    @objc func leftClick(){
           print(#function)
        self.navigationController?.popViewController(animated: true)
       }
       @objc func rightClick(){
              print(#function)
          }


}
