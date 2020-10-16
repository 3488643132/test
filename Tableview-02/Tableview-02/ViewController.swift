//
//  ViewController.swift
//  Tableview-02
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "aac")
        cell?.textLabel?.text = "98k"
        cell?.detailTextLabel?.text = "能吃鸡"
        return cell!
    }
    
    
    
}
