//
//  ViewController.swift
//  tableview-01
//
//  Created by student on 2020/10/16.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "a")
        cell.textLabel?.text = "第一行"
        cell.detailTextLabel?.text = "下一个"
        cell.imageView?.image = UIImage(systemName: "person")
        return cell
    }
    
    
}
