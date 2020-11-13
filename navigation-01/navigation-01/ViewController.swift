//
//  ViewController.swift
//  navigation-01
//
//  Created by student on 2020/11/13.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logintext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as!SecViewController
        vc.show = logintext.text
        
    }
   
    @IBAction func mybtn(_ sender: Any) {
       
            performSegue(withIdentifier: "aaa", sender: sender)
        
        
    }
}
    


