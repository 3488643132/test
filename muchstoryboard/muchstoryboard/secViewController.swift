//
//  secViewController.swift
//  muchstoryboard
//
//  Created by student on 2020/11/11.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class secViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true) {
            print("aaaaa")
        }
    }
    @IBAction func secbtn(_ sender: Any) {
        let thridvc = thirdViewController()
        thridvc.modalPresentationStyle = .fullScreen
        thridvc.view.backgroundColor = .red
        present(thridvc, animated: true){
            print("跳转到third")
        }
        
        
    }
    


}
