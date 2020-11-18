//
//  ViewController.swift
//  逆向传值-02-闭包
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
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "abc") as! SecViewController
        
        vc.presetclosure = {
            (info:String?)->Void in
            
            self.flab.text = info
        }
        
        present(vc, animated: true, completion: nil)
    }


}

