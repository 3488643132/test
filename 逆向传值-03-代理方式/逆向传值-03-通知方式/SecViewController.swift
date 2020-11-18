//
//  SecViewController.swift
//  逆向传值-03-代理方式
//
//  Created by student on 2020/11/18.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {


    @IBOutlet weak var f: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btn(_ sender: Any) {
        let input = f.text
        let notifaction = Notification(name: Notification.Name("abc"),object: nil,userInfo: ["info":self.f.text!])
        NotificationCenter.default.post(notifaction)
        
        dismiss(animated: true, completion: nil)
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
