//
//  ViewController.swift
//  tomCat1
//
//  Created by student on 2020/9/25.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tompicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var imagearray = [UIImage]()
    @IBAction func milk(_ sender: Any) {
        for index in 0...80{
            let name = "drink_\(index).jpg"
            let image = UIImage(named: name)
            imagearray.append(image!)
            
            
        }
        tompicture.animationImages = imagearray
        tompicture.animationRepeatCount = 1
        tompicture.startAnimating()
    }
    
}

