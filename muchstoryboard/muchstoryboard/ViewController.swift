//
//  ViewController.swift
//  muchstoryboard
//
//  Created by student on 2020/11/11.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func surebtn(_ sender: Any) {
        if mytext.text ==  "1234" {
            performSegue(withIdentifier: "aaa", sender: sender)
        }
    }
 
    
}

