//
//  person.swift
//  UI-WeChat
//
//  Created by Apple on 2021/3/27.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import UIKit

class person: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let dataSource = [Datum]()
    
     let tableview = UITableView(frame: UIScreen.main.bounds)
        
        override func viewDidLoad() {
            super.viewDidLoad()
    //        tableview.frame = CGRect(x: 0, y: 0, width: 428, height:600 )
            
            tableview.estimatedRowHeight = 200
            tableview.delegate = self
            tableview.dataSource = self
            tableview.showsVerticalScrollIndicator = false
            tableview.isScrollEnabled = false

            tableview.register(abc.self, forCellReuseIdentifier: "abc")
            self.view.addSubview(tableview)
            // Do any additional setup after loading the view.
            print(UIScreen.main.bounds)
        }
        

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dataSource.count
        }
        

        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60.0
        }
        
        

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableview.dequeueReusableCell(withIdentifier: "abc") as! abc
            cell.textLabel?.text = dataSource[indexPath.row].title
            return cell
        }
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 300
        }
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let imageview = UIImageView()
            imageview.frame = CGRect(x: 0, y: 450, width: 428, height: 300)
            imageview.backgroundColor = .blue
            imageview.image = UIImage(named: "组1.png")

            //个人信息
            let bigTitle = UILabel()
            bigTitle.frame = CGRect(x: 10, y: 80, width: 150, height: 50)
            bigTitle.text = "张小新"
            bigTitle.font = UIFont.boldSystemFont(ofSize: 48.0)
            
            let midTitle = UILabel()
            midTitle.frame = CGRect(x: 10, y: 140, width: 250, height: 50)
            midTitle.text = "北京华宇技术有限公司"
            midTitle.font = UIFont.boldSystemFont(ofSize: 20)
            
            let littleTitle = UILabel()
            littleTitle.frame = CGRect(x: 10, y: 190, width: 130, height: 40)
            littleTitle.text = "用户体验部"
            littleTitle.font = UIFont.boldSystemFont(ofSize: 15)
            
            let rightLittleTitle = UILabel()
            rightLittleTitle.frame = CGRect(x: 180, y: 190, width: 130, height: 40)
            rightLittleTitle.text = "用户体验设计师"
            rightLittleTitle.font = UIFont.boldSystemFont(ofSize: 15)
            
            imageview.addSubview(rightLittleTitle)
            imageview.addSubview(littleTitle)
            imageview.addSubview(midTitle)
            imageview.addSubview(bigTitle)

            //头像
            let avatar = UIImageView()
            avatar.frame = CGRect(x: 300, y: 80, width: 100, height: 100)
            avatar.layer.cornerRadius = 50
            avatar.clipsToBounds = true
    //        avatar.ima
            avatar.image = UIImage(systemName: "person")
            imageview.addSubview(avatar)
            tableview.addSubview(imageview)
            return imageview
        }
        func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
            return 100.0
        }
        func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
            let footImageview = UIImageView()
            footImageview.frame = self.view.bounds
            footImageview.backgroundColor = .blue
            
            let button = UIButton()
            button.backgroundColor = .red
            
            button.layer.cornerRadius = 30
            button.clipsToBounds = true
            button.setTitle("退出登录", for: UIControl.State.highlighted)
            button.addTarget(self, action: #selector(button1), for: UIControl.Event.touchUpInside)
            button.frame = CGRect(x:self.view.bounds.minX, y: self.view.bounds.minY, width: 300, height: 60)
            footImageview.addSubview(button)
            return footImageview
            
        }
        
        @objc func button1(){
            print("你好")
        }
}
extension ViewController{
    func gets(){
        let url = URL(string: "http://v.juhe.cn/toutiao/index?type=&page=&page_size=&key=cfdee33fd80760280a4fe98a1d2706f0")
        let request = URLRequest(url: url!)
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: request) { (data, reponse, error) in
            print(Thread.current)
            print(data)
            if error != nil{
                print(error)
            }
            else{
                let httpResp = reponse as! HTTPURLResponse
                print(httpResp.statusCode)
                print("-----------------")
                print(String(data:data!,encoding:.utf8))
//
                if let data = data {
                    if let newsModel = try? JSONDecoder().decode(newsModel.self, from: data) {
                        self.dataSource = newsModel.result.data
                        DispatchQueue.main.async {
                            self.houseTableview.reloadData()
                        }
                    }
                }
                
            }
        }
        task.resume()
        
    }
}
