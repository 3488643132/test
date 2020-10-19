//
//  ViewController.swift
//  tableview-03
//
//  Created by student on 2020/10/19.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.num1.rowHeight = 80
        let header = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 60))
        
        header.backgroundColor = .brown
        
         let footer = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 60))
        footer.backgroundColor = .cyan
    }

    
}
var weapons = ["AUG","十字弩","DP28","Droza","Kar98k","M16a4","Micro UZI","平底锅","SKS","UMP9","awm"]
var weaponTypes = ["自动步枪","狙击枪","冷兵器","机枪","自动步枪","狙击枪","自动步枪","冲锋枪","近身武器","半自动步枪","冲锋枪"]
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weaponTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aaa")
        cell?.textLabel?.text = weaponTypes[indexPath.row]
        cell?.detailTextLabel?.text = weapons[indexPath.row]
        if indexPath.row == 0 {
            cell?.backgroundColor = .blue
        }
        return cell!
    }
    
    
}
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selerow = indexPath.row
        print("您点击的内容为\(selerow),武器为\(weapons[selerow]),武器类型为\(weaponTypes[selerow])")
        
    }
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath)->CGFloat {
        if indexPath.row % 2 == 0 {
            return 100.0
        }
        return 60.0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section header"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "section footer"
    }

   
    
}

