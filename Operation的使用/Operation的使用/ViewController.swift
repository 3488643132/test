//
//  ViewController.swift
//  Operation的使用
//
//  Created by student on 2021/3/22.
//  Copyright © 2021 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        operationNumOne()
    }


}

extension ViewController{
    func operationNumOne() {
        let opq = OperationQueue()
        let taskOne = BlockOperation{
            for i in 0...9{
                print(i)
            }
        }
        //监听事件完成
        taskOne.completionBlock = {
            print("任务一完成")
        }
        let taskTwo = BlockOperation{
            for i in 10...20{
                print(i)
            }
        }
        taskTwo.completionBlock = {
            print("任务二完成")
        }
        let taskThree = BlockOperation{
            for i in 21...30{
                print(i)
            }
        }
        
        taskThree.completionBlock = {
            print("任务三完成")
        }
        let taskFour = BlockOperation{
            for i in 31...40{
                print(i)
            }
        }
        //使任务顺序执行
        taskTwo.addDependency(taskOne)
        taskThree.addDependency(taskTwo)
        taskFour.addDependency(taskThree)

        //最大并发数
        opq.maxConcurrentOperationCount = 2
        //添加事物
        opq.addOperations([taskOne,taskTwo,taskFour,taskThree], waitUntilFinished: true)
        
        
    }
    
}

//并行队列，同步执行
extension ViewController{
    func dispatch() {
//        let dispatchNumOne = DispatchQueue()
        
    }
}
