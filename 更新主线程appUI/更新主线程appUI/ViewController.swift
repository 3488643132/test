//
//  ViewController.swift
//  更新主线程appUI
//
//  Created by student on 2021/3/25.
//  Copyright © 2021 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        let label = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        label.text = "Hello World!!!"
        label.textAlignment = .center
        label.frame = CGRect(x: 20, y: 30, width: 300, height: 200)
        self.view.addSubview(label)
        
        button.frame = CGRect(x: 20, y: 200, width: 80, height: 80)
        button.backgroundColor = .gray
        button.setTitle("请点我", for: UIControl.State())
        button.addTarget(self, action: #selector(onClicked), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }
    @objc func onClicked(){
        loadUi()
    }
}
extension ViewController{
    
    func loadUi(){
        print("开始更新")
        //Thread方式回到主线程
//        let thread = Thread{
//            print("更新第一个UI")
//
//        }
//        self.perform(#selector(loadFristUI), on: Thread.main, with: nil, waitUntilDone: false)
//        thread.start()
        
        //GCD方式回到主线程
//        DispatchQueue.global().async {
//            print("更新第一个UI")
//            DispatchQueue.main.async {
//                self.label.textColor = .green
//            }
//        }
        OperationQueue().addOperation {
            print("\(Thread.current)执行任务")

            Thread.sleep(forTimeInterval: 2)

            OperationQueue.main.addOperation {
                self.label.textColor = .green
            }
        }
        
        print("更新结束")
    }
//    @objc func loadFristUI(){
//        label.textColor = .green
//    }
    
    
    
    
}
