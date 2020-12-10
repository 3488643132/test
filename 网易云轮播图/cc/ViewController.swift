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
            imagephoto.frame = CGRect(x: scrollview.frame.size.width * CGFloat(index), y: 0, width: scrollview.frame.size.width, height: scrollview.frame.size.height)
            
            scrollview.addSubview(imagephoto)
        }
        scrollview.isPagingEnabled = true
        scrollview.bounces = false
        scrollview.contentSize = CGSize(width: CGFloat(imagename.count)*scrollview.frame.size.width, height: scrollview.frame.size.height)
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
var num = ["1","2","3"]
var people = ["qq","cc","vv",]
var time = ["11.11","11.12","11.13"]


extension ViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aaa") as! musicTableViewCell
        cell.labalone.text = num[indexPath.row]
        cell.labaltwo.text = people[indexPath.row]
        cell.labalthree.text = time[indexPath.row]
        return cell
        
    }
    
    
}
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    
}
