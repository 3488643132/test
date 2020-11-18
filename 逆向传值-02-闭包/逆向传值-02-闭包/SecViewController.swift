//
//  SecViewController.swift
//  逆向传值-02-闭包
//
//  Created by student on 2020/11/18.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit
//定义一个闭包
typealias Disclosure = (String?)->Void
class SecViewController: UIViewController {
//创建闭包
 
    @IBOutlet weak var textfield: UITextField!
       var presetclosure:Disclosure?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func textbtn(_ sender: Any) {
        presetclosure?(self.textfield.text)
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
