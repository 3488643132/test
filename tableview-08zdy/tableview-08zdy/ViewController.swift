//
//  ViewController.swift
//  tableview-08zdy
//
//  Created by student on 2020/11/4.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//var iphone = ["iPhone 4 - iOS 4", "iPhone 4s - iOS 5","iPhone 5 - iOS 6","iPhone 5s - iOS 7","iPhone 6 - iOS 8","iPhone 6 Plus - iOS 8","iPhone 6s - iOS 9","iPhone 6s Plus - iOS 9","iPhone 7 - iOS 10","iPhone 7 Plus - iOS 10","iPhone 8 - iOS 11","iPhone 8 Plus - iOS 11","iPhone X - iOS 11", "iPhone Xs - iOS 12","iPhone XR - iOS 12","iPhone Xs Max - iOS 12"]
    //创建下拉刷新控制器
    let refresh = UIRefreshControl()
    var pics = ["01.jpeg","02.jpeg","03.jpeg","04.jpeg","05.jpeg"]
    
    var titles = ["小龙女哀悼金庸", "坠江公交黑匣子","新iPad发布","金庸去世", "苹果发布会"]
    
    var times = ["10:12", "10:15", "10:20", "10:50", "11:00"]
    
    var contents = ["小龙女哀悼金庸:他笔下的小龙女给予我一切一切", "重庆坠江公交车黑匣子打捞出水 已交公安部门", "新iPad发布 苹果10月发布会发布三款新品", "94岁金庸去世 网友明星悼念:他带着武侠梦睡着了", "苹果于10月30号晚上22点召开新品发布会"]
    var tableview:UITableView = UITableView()

    override func viewDidLoad() {
        refresh.addTarget(self, action: #selector(loaddata), for: .valueChanged)
         super.viewDidLoad()
        tableview.frame = self.view.frame
        tableview.dataSource = self
        tableview.rowHeight = 120
        tableview.register(iphoneTableViewCell.self, forCellReuseIdentifier: "iphone")
       
       
        //传给tableview
        tableview.refreshControl = refresh
         self.view.addSubview(tableview)
        // Do any additional setup after loading the view.
    }
    @objc func loaddata(sender:UIRefreshControl){
        titles.insert("马保国浑圆形意太极掌门人", at: 0)
        times.insert("刚刚", at: 0)
        contents.insert("马保国参加比赛被一拳ko", at: 0)
        //下啦刷新必加
        tableview.reloadData()
        refresh.endRefreshing()
    }

}
extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        times.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "iphone") as? iphoneTableViewCell
//        cell?.textLabel?.text = iphone[indexPath.row]
        cell?.setdata(pic: pics[indexPath.row], title: titles[indexPath.row], author: contents[indexPath.row], time: times[indexPath.row])
        
        return cell!
        
    }
    
    
}

