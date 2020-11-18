//
//  ViewController.swift
//  逆向传值-01-协议
//
//  Created by student on 2020/11/18.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "abc")as!SecViewController
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }


}
extension ViewController:passValueProtocol{
    func passValue(info: String?) {
        self.flab.text = info
    }
    
    
}

