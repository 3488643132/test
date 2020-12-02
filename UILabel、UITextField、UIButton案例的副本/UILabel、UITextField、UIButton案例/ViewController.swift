//
//  ViewController.swift
//  UILabel、UITextField、UIButton案例
//
//  Created by 杨帆 on 2018/10/14.
//  Copyright © 2018 ABC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
      let userDefault = UserDefaults.standard
    
//    @IBOutlet weak var forgrtbtn: UIButton!
    @IBOutlet weak var forgetbtn: UISwitch!
    
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           username.text = userDefault.string(forKey: "uname")
           password.text = userDefault.string(forKey: "upwd")
           username.text = userDefault.string(forKey: "uname")
           forgetbtn.isOn = userDefault.bool(forKey: "forgetbtn")

          print(NSHomeDirectory())
       }
    
    @IBAction func loginAA(_ sender: Any) {
    
        let uname = username.text
        let upwd = password.text
        
        if (uname == ""){
        let alertVC =   UIAlertController(title: "警告", message: "用户名不能为空", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "确定", style: .default, handler: nil))
            present(alertVC, animated: true, completion: nil)
            return
        }
        
        if upwd == "" {
        let alertVC =   UIAlertController(title: "警告", message: "密码不能为空", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "确定", style: .default, handler: nil))
        present(alertVC, animated: true, completion: nil)
        return
        }
        
        if forgetbtn.isOn {
               let name = self.username.text
               let pwd = self.password.text
               UserDefaults.standard.set(name, forKey: "name")
               UserDefaults.standard.set(pwd, forKey: "pwd")
               UserDefaults.standard.set(true, forKey: "isOn")
               UserDefaults.standard.synchronize()
        }
//
        
    }
   


    //触摸屏幕方法
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //退键盘的方式之一
        self.view.endEditing(true)
    }
    
}

