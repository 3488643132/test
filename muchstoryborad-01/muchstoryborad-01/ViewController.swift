//
//  ViewController.swift
//  muchstoryborad-01
//
//  Created by student on 2020/11/9.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//            let vc = UIStoryboard(name: "myStoryboard", bundle: nil).instantiateInitialViewController()
        //自定义vc文件
        let vc = UIStoryboard(name: "myStoryboard", bundle: nil).instantiateViewController(identifier: "abc")
        //创建一个自定义viewcontroller调用
//               let vc = kdViewController()
        //创建一个自定义xib
//        let vc = kdzViewController(nibName: "kdzViewController", bundle: nil)
        //创建文件时没有勾选xib文件时，后期需要绑定类，且fileowner中要设view
        present(vc, animated: true, completion: nil)
        
        
        
    }

}
var weasituation = ["今日晴天，当前气温18度，最高气温22度,空气质量优","今日阴天，当前气温9度，最高气温13度,空气质量良","今日小雨，当前气温10度，最高气温15,空气质量差","今日多云，当前气温17度，最高气温20,空气质量优","今日晴天，当前气温19度，最高气温25,空气质量良",]
var wss = ["今日晴天，当前气温18度，最高气温22度,空气质量优","今日阴天，当前气温9度，最高气温13度,空气质量良"]
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weasituation.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aaa")
        cell?.textLabel?.text = weasituation[indexPath.row]
        cell?.detailTextLabel?.text = wss[indexPath.row]
        return cell!
    }
    
    
}
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
}

