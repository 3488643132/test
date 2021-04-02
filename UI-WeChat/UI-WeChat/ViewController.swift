//
//  ViewController.swift
//  UI-WeChat
//
//  Created by Apple on 2021/3/25.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var dataSource = [Datum]()
    
    let houseTableview = UITableView(frame: CGRect(x: 0, y: 0, width: 414, height: 300))
    let navigation = UINavigationController()

//    var numbers = ["你好，hello","你好，之花"]
    
    
    override func viewDidLoad() {
        get()
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
//        let navigatioBar = navigation.navigationBar.backItem[0]
        
        
//        houseTableview.frame =
        //houseTableview.
        houseTableview.separatorStyle = .singleLine
        houseTableview.dataSource = self
        houseTableview.delegate = self
        //设置显示的内容顶点至tableview边缘的偏移量
        houseTableview.contentInset = UIEdgeInsets(top: 0,left: 0,bottom: 15,right: 0)
        //隐藏滚动条
        houseTableview.showsVerticalScrollIndicator = true
        houseTableview.backgroundColor = .cyan
        houseTableview.estimatedRowHeight = 30
//        houseTableview.cellForRow(at: IndexPath).add
//        houseTableview.rowHeight = UITableviewAuto
        houseTableview.register(abc.self, forCellReuseIdentifier: "abc")
        print(UIScreen.main.bounds)
        self.view.addSubview(houseTableview)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = houseTableview.dequeueReusableCell(withIdentifier: "abc") as! abc
        cell.backgroundColor = .brown
        cell.textLabel?.text = dataSource[indexPath.row].title
        cell.detailTextLabel?.text = dataSource[indexPath.row].author_name
        
        return cell
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 60
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

//        tableView.deselectRow(at: indexPath, animated: true)
     let navigations = navigatios()
        navigations.passDatas = dataSource[indexPath.row]
        navigation.pushViewController(navigations, animated: true)

    }
    
    
}

extension ViewController{
    func get(){
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
