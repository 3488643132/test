//
//  URLrequest.swift
//  UI-WeChat
//
//  Created by Apple on 2021/3/30.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import UIKit

class URLrequest: UIViewController {
    var dataSource = [Datum]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        get()
    }
}

extension URLrequest{
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
                print("-----------------")
                print(String(data:data!,encoding:.utf8))
//
                if let data = data {
                    if let newsModel = try? JSONDecoder().decode(newsModel.self, from: data) {
                        self.dataSource = newsModel.result.data
                        DispatchQueue.main.async {
//                            self.
                        }
                    }
                }
                
            }
        }
        task.resume()
        
    }
}
