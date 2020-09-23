//
//  ViewController.swift
//  UIswitch
//
//  Created by student on 2020/9/23.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fristimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func friston(_ sender: UISwitch) {
        if sender.isOn {
            
            self.fristimage.image = UIImage(named: "p2.png")
        } else {
            self.fristimage.image = UIImage(named: "p1.png")
        }
    }
}

