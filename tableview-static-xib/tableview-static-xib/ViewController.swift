//
//  ViewController.swift
//  tableview-static-xib
//
//  Created by student on 2020/11/6.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let viewlogin = Bundle.main.loadNibNamed("View", owner: nil, options: nil)?.last as! UIView
        viewlogin.frame = CGRect(x: 0, y: 200, width: self.view.bounds.width, height: 228.0)
        self.view.addSubview(viewlogin)
    }


}

