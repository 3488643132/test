//
//  ViewController.swift
//  cc
//
//  Created by student on 2020/10/14.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var page: UIPageControl!
    @IBOutlet weak var scrollview: UIScrollView!
    //    @IBOutlet weak var scrollview: UIImageVie
    let imagename = ["02.jpg","03.jpg","04.jpg","05.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for (index,imagename) in imagename.enumerated() {
            let imagephoto = UIImageView(image: UIImage(named: imagename))
            imagephoto.frame = CGRect(x: scrollview.frame.size.width * CGFloat(index), y: 0, width: scrollview.frame.size.width, height: 420)
            
            scrollview.addSubview(imagephoto)
        }
        
        scrollview.contentSize = CGSize(width: CGFloat(imagename.count)*scrollview.frame.size.width, height: 420)
        scrollview.delegate = self
    }
    
    @IBAction func page2(_ sender: UIPageControl) {
        let count = sender.currentPage
        let offsetx = scrollview.frame.width * CGFloat(count)
        scrollview.setContentOffset(CGPoint(x: offsetx, y: 0), animated: true)
        
        
    }
}
extension ViewController:UIScrollViewDelegate{
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset
        let count = offset.x / scrollView.frame.width
        page.currentPage = Int(count)
        
        
    }
    
}

