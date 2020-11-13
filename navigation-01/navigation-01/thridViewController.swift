//
//  thridViewController.swift
//  navigation-01
//
//  Created by student on 2020/11/13.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class thridViewController: UIViewController {
    
    var uessrname:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
   var labals = UILabel(frame: CGRect(x: 20, y: 80, width: 100, height: 100))
//        labals.center = view.center
//        labals.backgroundColor = .white
        labals.text = uessrname
        // Do any additional setup after loading the view.
        view.addSubview(labals)
    }
 
    
    
    


}
