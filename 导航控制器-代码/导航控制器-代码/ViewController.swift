//
//  ViewController.swift
//  导航控制器-代码
//
//  Created by student on 2020/11/23.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
        self.navigationItem.title = "首页"
        //定义首页导航栏左右两个控件样式，可以自定义
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "doc"), style: .plain, target: self, action: #selector(leftClick))
         self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "camera"), style: .plain, target: self, action: #selector(rightClick))
        //定义下一个页面返回格式，可以自定义文字，以及样式
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(rightClick))
        
        //设置导航整体字体颜色，
        self.navigationController?.navigationBar.tintColor = .black
        //设置首页中间格式，可以是任何控件
        self.navigationItem.titleView = UISwitch()
    }
    @objc func leftClick(){
        print(#function)
    }
    @objc func rightClick(){
           print(#function)
       }
    //触摸进入下一个页面
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.pushViewController(SecViewController(), animated: true)
    }

}

