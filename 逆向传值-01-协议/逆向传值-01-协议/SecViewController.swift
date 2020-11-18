//
//  SecViewController.swift
//  逆向传值-01-协议
//
//  Created by student on 2020/11/18.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit
//定义一个协议
protocol passValueProtocol {
     func passValue(info:String?)
 }
 
class SecViewController: UIViewController {
//在被代理对象生明一个属性delegate遵循协议
    var delegate : passValueProtocol?
    
    @IBOutlet weak var ft: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func fbtn(_ sender: Any) {
        //真正传值的时候代理用
        self.delegate?.passValue(info: self.ft.text)
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
