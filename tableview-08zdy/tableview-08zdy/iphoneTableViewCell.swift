//
//  iphoneTableViewCell.swift
//  tableview-08zdy
//
//  Created by student on 2020/11/4.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class iphoneTableViewCell: UITableViewCell {
    let newpic = UIImageView(frame: CGRect(x: 8, y: 10, width: 100, height: 100))
    let newplab = UILabel(frame: CGRect(x: 116, y: 10, width: UIScreen.main.bounds.size.width-8, height: 40))
    let newauthor = UILabel(frame: CGRect(x: 116, y: 120 - 8-40 , width: 80, height: 40))
    let newtime = UILabel(frame: CGRect(x: UIScreen.main.bounds.size.width-8-100, y: 120 - 8-40 , width: 80, height: 40))

    let iphonelb = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUI()
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI(){
        
        iphonelb.center = self.contentView.center
        iphonelb.textColor = .orange
        iphonelb.textAlignment = .center
        contentView.addSubview(iphonelb)
        contentView.addSubview(newpic)
        contentView.addSubview(newplab)
        contentView.addSubview(newauthor)
        contentView.addSubview(newtime)


    }
    func setdata(pic:String,title:String,author:String,time:String){
//        iphonelb.text = iphoneinfo
        newpic.image = UIImage(contentsOfFile: pic)
        newauthor.text = author
        newplab.text = title
        newtime.text = time
       }
    
}
