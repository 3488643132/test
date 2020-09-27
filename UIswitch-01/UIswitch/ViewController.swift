//
//  ViewController.swift
//  UIswitch
//
//  Created by student on 2020/9/23.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Ppicture: UIImageView!
    @IBOutlet weak var labalcount: UILabel!
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
    @IBAction func stepcount(_ sender: UIStepper) {
        let count = Int(sender.value)
        self.labalcount.text = ("\(count)件商品")
    }
    
    @IBAction func man(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.Ppicture.image = UIImage(named: "p01.png")
        }else if sender.selectedSegmentIndex == 1{
            self.Ppicture.image = UIImage(named: "p02.png")
        }else{
            self.Ppicture.image = UIImage(named: "p03.png")
        }
    }
}

