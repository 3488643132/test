//
//  ViewController.swift
//  tableview-07
//
//  Created by student on 2020/11/2.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tableview:UITableView = UITableView()


    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        self.tableview.frame = self.view.bounds
        tableview.dataSource = self
        tableview.delegate = self
        self.tableview.rowHeight = 100.0
        // Do any additional setup after loading the view.
        let nib:UINib = UINib.init(nibName: "iphoneTableViewCell", bundle: nil)
        
        self.tableview.register(nib, forCellReuseIdentifier: "iphone")
        self.view.addSubview(tableview)
    }


}
var iphone = ["iPhone 4 - iOS 4", "iPhone 4s - iOS 5","iPhone 5 - iOS 6","iPhone 5s - iOS 7","iPhone 6 - iOS 8","iPhone 6 Plus - iOS 8","iPhone 6s - iOS 9","iPhone 6s Plus - iOS 9","iPhone 7 - iOS 10","iPhone 7 Plus - iOS 10","iPhone 8 - iOS 11","iPhone 8 Plus - iOS 11","iPhone X - iOS 11", "iPhone Xs - iOS 12","iPhone XR - iOS 12","iPhone Xs Max - iOS 12"]
var ipones = ["iphone","ipjone1","iphone2","iphone3","iphone4","iphone5","iphone6","iphone7","iphone8","iphone10","iphone11","iphone11","iphone12","iphone13","iphone14","iphone15"]

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        iphone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "iphone") as? iphoneTableViewCell
        cell?.texts.text = iphone[indexPath.row]
        cell?.pic.image = UIImage(systemName: "person")
        cell?.texts1.text = ipones[indexPath.row]
        return cell!
    }
    
    
}
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170.0
    }
}
