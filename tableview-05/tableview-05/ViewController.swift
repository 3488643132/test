//
//  ViewController.swift
//  tableview-05
//
//  Created by student on 2020/10/23.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var sectionTitles:[String]  = ["A","C","F","G","H","M","S","T","X","Z"]
     var contentsArray: [[String]]  = [
         ["阿伟","阿姨","阿三"],
         ["蔡芯","成龙","陈鑫","陈丹","成名"],
         ["芳仔","房祖名","方大同","芳芳","范伟"],
         ["郭靖","郭美美","过儿","过山车"],
         ["何仙姑","和珅","郝歌","好人"],
         ["妈妈","毛不易"],
         ["孙周","沈冰","婶婶"],
         ["涛涛","淘宝","套娃"],
         ["小二","夏紫薇","许巍","许晴"],
         ["周扒皮","周杰伦","张柏芝","张大仙"]
     ]


    
    @IBOutlet weak var taw: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //分割线yanse
        self.taw.separatorColor = .brown
        //分割线类型
        self.taw.separatorStyle = .singleLine
        //索引字体颜色
        self.taw.sectionIndexColor = .red
    }


}

extension ViewController:UITableViewDataSource{
    //头索引
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    //返回行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentsArray[section].count
    }
    //设置内容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact")
        cell?.textLabel?.text = contentsArray[indexPath.section][indexPath.row]
//        cell?.backgroundVi
        cell?.backgroundColor = .green
        cell?.accessoryView = UISwitch()
        return cell!
        
    }
    //设置头标题
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
}
extension ViewController:UITableViewDelegate{
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return self.sectionTitles
    }
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
          
          //点击的索引标题
          print(title)
          
          //一定要返回index 否则 点击索引不会自动滚动到指定位置
          return index
      }
}
