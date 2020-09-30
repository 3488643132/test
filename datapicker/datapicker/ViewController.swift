//
//  ViewController.swift
//  datapicker
//
//  Created by student on 2020/9/30.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var databrithday: UITextField!
    @IBOutlet weak var labal: UILabel!
    @IBOutlet weak var buttontf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let datepick = UIDatePicker()
        datepick.datePickerMode = .date
        datepick.locale = Locale(identifier: "zh")
        self.databrithday.inputView = datepick
        datepick.addTarget(self, action: #selector(getBrithday), for: .valueChanged)
        
        let buttonpicker = UIDatePicker()
        buttonpicker.datePickerMode = .date
        buttonpicker.locale = Locale(identifier: "zh")
        self.buttontf.inputView = buttonpicker
        buttonpicker.addTarget(self, action: #selector(buttonget), for: .touchUpInside)
        
        
        
        
    }
    @objc func buttonget(_ sender:UIDatePicker) {
             let datapick = DateFormatter()
              datapick.dateFormat = "yyyy年MM月dd日"
              let labalStr1 = datapick.string(from: sender.date)
              self.buttontf.text = labalStr1
              
    }
    @objc func getBrithday(_ sender:UIDatePicker) {
             let datapick = DateFormatter()
           datapick.dateFormat = "yyyy年MM月dd日"
           let labalStr = datapick.string(from: sender.date)
           self.databrithday.text = labalStr
           
    }

    @IBAction func data(_ sender: UIDatePicker) {
        let datapick = DateFormatter()
        datapick.dateFormat = "yyyy年MM月dd日"
        let labalStr = datapick.string(from: sender.date)
        self.labal.text = labalStr
        
        
        
    }
    
  
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

