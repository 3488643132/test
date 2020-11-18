//
//  ViewController.swift
//  逆向传值-03-代理方式
//
//  Created by student on 2020/11/18.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //先监听方式，后发送
        NotificationCenter.default.addObserver(self, selector: #selector(handleNoti), name: Notification.Name("abc"), object: nil)
    }
    @objc func handleNoti(notification:Notification){
        let value = notification.userInfo
        self.lb.text = value!["info"] as? String
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "abc") as! SecViewController
        
        
        present(vc, animated: true, completion: nil)
        
    }


}

