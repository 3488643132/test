//
//  ViewController.swift
//  多线程访问临界资源
//
//  Created by student on 2021/3/24.
//  Copyright © 2021 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 100
//    var lock = NSLock()
    var lock = os_unfair_lock()//速度最快
    let semaphore = DispatchSemaphore(value: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let thread1 = Thread{
            self.saletickets()
        }
        let thread2 = Thread{
            self.saletickets()
        }
        let thread3 = Thread{
            self.saletickets()
        }
        thread1.start()
        thread2.start()
        thread3.start()
    }

    func saletickets() {
//        lock.lock()
//        objc_sync_enter(self)
//        os_unfair_lock_lock(&lock)
        semaphore.wait(timeout: .distantFuture)//信号量等待是否满足条件，信号量减1
        while true {
            if count <= 0 {
//                lock.unlock()
//                os_unfair_lock_unlock(&lock)//速度最快
                print("票已售罄")
            }
            count -= 1
            print("\(Thread.current)窗口已卖票\(count)")
        }
//        lock.unlock()
//        objc_sync_exit(self)
//        os_unfair_lock_unlock(&lock)//速度最快
        semaphore.signal()//信号量释放加1
    }


}

