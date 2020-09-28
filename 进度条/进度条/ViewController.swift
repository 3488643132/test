//
//  ViewController.swift
//  进度条
//
//  Created by student on 2020/9/28.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var progress: UIView!
    @IBOutlet weak var none: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stop(_ sender: Any) {
        self.none.stopAnimating()
//        self.progress.ani
        UIView.animate(withDuration: 10) {
//            self.progress.
        }
    }
    
}

