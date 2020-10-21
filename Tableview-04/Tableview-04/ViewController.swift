//
//  ViewController.swift
//  Tableview-04
//
//  Created by student on 2020/10/21.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var weapons = ["AUG","十字弩","DP28","Droza","Kar98k","M16a4","Micro UZI","平底锅","SKS","UMP9","awm"]
//    var weaponTypes = ["自动步枪","狙击枪","冷兵器","机枪","自动步枪","狙击枪","自动步枪","冲锋枪","近身武器","半自动步枪","冲锋枪"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func bianji(_ sender: Any) {
        tableview1.setEditing(true, animated: true)
    }
    @IBAction func finish(_ sender: Any) {
         tableview1.setEditing(false, animated: true)
    }
    
    @IBOutlet weak var tableview1: UITableView!
    
}



extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weapons.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aaa")
        cell?.textLabel?.text = weapons[indexPath.row]
//        cell?.detailTextLabel?.text = weaponTypes[indexPath.row]
        return cell!
    }

    
    
}
extension ViewController:UITableViewDelegate{
func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return true
}
func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
    return .insert
}
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
          weapons.remove(at: indexPath.row)
          tableView.deleteRows(at: [indexPath], with: .automatic)
    }else if editingStyle == .insert{
        weapons.insert("nothing", at: indexPath.row)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
 
    }
        func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "删除"
    }
}

