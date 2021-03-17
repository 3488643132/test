//
//  ViewController.swift
//  GCD使用方法
//
//  Created by student on 2021/3/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        async()
    }

}
extension ViewController {
    func serialDispatchQueue()->DispatchQueue{
        let serialDQ = DispatchQueue(label: "serialDispatch")
        return serialDQ
    }
    
    func concurrentDispatchQueue()->DispatchQueue{
        let concurrentDQ1 = DispatchQueue.global()
        let concurrentDQ2 = DispatchQueue.global(qos: .default)
        let concurrentDQ3 = DispatchQueue(label: "concurrentDispatchQueue", qos: .default, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
        return concurrentDQ1
    }
    
    func mainDispatchQueue() {
        let mainDQ = DispatchQueue.main
    }
}
extension ViewController{
    func sync()  {
        let db = serialDispatchQueue()
        db.sync {
            print("任务一开始")
            Thread.current
            for i in 0...9{
                print(i)
            }
            print("任务一结束")
        }
    }
    
    func async()  {
        let db = concurrentDispatchQueue()
        
        //同步执行
        
//        db.sync {
//            print("任务0开始")
//            Thread.current
//            for i in 0...9{
//                print(i)
//            }
//            print("任务0结束")
//        }
        
        //异步执行
        
        db.async {
            print("任务一开始")
            Thread.current
            for i in 9...15{
                print(i)
            }
            print("任务一结束")

        }
        db.async(flags: .barrier) {
            
        }
        db.async {
            print("任务二开始")

            Thread.current
            for i in 9...15{
                print(i)
            }
            print("任务二结束")

        }
        db.async {
            print("任务三开始")

            Thread.current
            for i in 9...15{
                print(i)
            }
            print("任务三结束")

        }
    }
}

extension ViewController{

    func after() {
        let db = serialDispatchQueue()
        print("start work")
        //延后执行
        db.asyncAfter(deadline: .now() + 3) {
            print(Thread.current)
            for i in 0...9{
                Thread.sleep(forTimeInterval: 3)
                print(i)
            }
        }
        
    }
    func concurrent() {
        //循环执行
        DispatchQueue.concurrentPerform(iterations: 3) { (index) in
            print(Thread.current)
            for i in 0...3{
                Thread.sleep(forTimeInterval: 3)
                print("\(index)---\(i)")
            }
        }
        print("stop work")
    }
    
}


