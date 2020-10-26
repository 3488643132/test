//
//  ViewController.swift
//  tableview-06
//
//  Created by student on 2020/10/26.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var detailContent = ["iPhone 4 - iOS 4", "iPhone 4s - iOS 5","iPhone 5 - iOS 6","iPhone 5s - iOS 7","iPhone 6 - iOS 8","iPhone 6 Plus - iOS 8","iPhone 6s - iOS 9","iPhone 6s Plus - iOS 9","iPhone 7 - iOS 10","iPhone 7 Plus - iOS 10","iPhone 8 - iOS 11","iPhone 8 Plus - iOS 11","iPhone X - iOS 11", "iPhone Xs - iOS 12","iPhone XR - iOS 12","iPhone Xs Max - iOS 12"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    

}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ios") as! yfTableViewCell
        cell.textLabel?.text = detailContent[indexPath.row]
        cell.image1.image = UIImage(systemName: "tv")
        cell.labal2.text = detailContent[indexPath.row]
        cell.labal1.text = "\(indexPath.row + 1)"
        
        return cell
        
    }
    
    
}

extension ViewController:UITableViewDelegate{
    
}
