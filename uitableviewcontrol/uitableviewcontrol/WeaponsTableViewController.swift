//
//  WeaponsTableViewController.swift
//  uitableviewcontrol
//
//  Created by Apple on 2020/9/20.
//  Copyright © 2020 crazyit.ong. All rights reserved.
//

import UIKit

class WeaponsTableViewController: UITableViewController {
    var weapons = ["AUG","十字弩","DP28","Droza","Kar98k","M16a4","Micro UZI","平底锅","SKS","UMP9"]
    var weaponTypes = ["自动步枪","狙击枪","冷兵器","机枪","自动步枪","狙击枪","自动步枪","冲锋枪","近身武器","半自动步枪","冲锋枪"]
    var erigins = ["奥地利","英国","中国","前苏联","俄罗斯","德国","y美国","以色列","美国","前苏联","美国"]
    var weaponImages = ["aug","awm","crossbow","dp28","groza","kar98","m16a4","microuzi","pan","sks","ump9"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weapons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = String(describing:CardCell.self)

        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! CardCell
        
        cell.typeLabel.text = weaponTypes[indexPath.row]
        cell.weaponLabel.text = weapons[indexPath.row]
        cell.orignlabel.text = origns[indexPath.row]
        cell.backimageview.image = UIImage(named:weaponImages[indexPath.row])
        
//         Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
