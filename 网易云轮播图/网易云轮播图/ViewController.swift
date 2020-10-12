//
//  ViewController.swift
//  网易云轮播图
//
//  Created by student on 2020/10/12.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    let imagename = ["01.jpg","02.jpg","03.jpg","04.jpg","05.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for (index,imagename) in imagename.enumerated() {
            let imagephoto = UIImageView(image: UIImage(named: imagename))
            imagephoto.frame = CGRect(x: scrollview.frame.size.width * CGFloat(index), y: 0, width: scrollview.frame.size.width, height: 420)
            
            scrollview.addSubview(imagephoto)
        }
        
        scrollview.contentSize = CGSize(width: CGFloat(imagename.count)*scrollview.frame.size.width, height: 420)
        
    }


}

