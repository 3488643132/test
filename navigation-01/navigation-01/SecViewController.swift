//
//  SecViewController.swift
//  navigation-01
//
//  Created by student on 2020/11/13.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class SecViewController: UIViewController {
var show:String?
    @IBOutlet weak var mylab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        mylab.text = show
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = thridViewController()
        vc.view.backgroundColor = .gray
        vc.uessrname = show
        
        navigationController?.pushViewController(vc, animated: true)
    }

}
