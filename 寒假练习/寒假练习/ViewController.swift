//
//  ViewController.swift
//  寒假练习
//
//  Created by Apple on 2021/1/21.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let rect = CGRect(x: 32, y: 80, width: 256, height: 256)
//        let imageview = UIImageView(frame: rect)
//        let image = UIImage(named: "aug.jpg")
//        imageview.image = image
//        imageview.isUserInteractionEnabled = true
//        self.view.addSubview(imageview)
//        let guesture = UITapGestureRecognizer(target: self, action: #selector(singleTap(_:)))
//        imageview.addGestureRecognizer(guesture)
        
        
         //transform的使用
//        let rect = CGRect(x: 50, y: 150, width: 200, height: 50)
//        let view = UIView(frame: rect)
//        view.backgroundColor = UIColor.brown
//        self.view.addSubview(view)
//        var transform = view.transform
//        transform = transform.rotated(by: 3.14/4)
//        view.transform = transform
        
        //UIview的渐变视图填充
//        let image = UIImage(named: "aug.jpg")
//        let patternColor = UIColor.init(patternImage: image!)
//        self.view.backgroundColor = patternColor
        
        //UIview的阴影
//        let image = UIImage(named: "aug.jpg")
//        let imageView = UIImageView(image: image)
//        let rect = CGRect(x: 36, y: 80, width: 248, height: 164)
//        imageView.frame = rect
//        imageView.layer.shadowColor = UIColor.black.cgColor
//        imageView.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
//        imageView.layer.shadowOpacity = 0.45
//        imageView.layer.shadowRadius = 10
//        self.view.addSubview(imageView)
        
        //给图像视图添加边框效果
//        let image = UIImage(named: "aug.jpg")
//        let imageview = UIImageView(image: image)
//        imageview.frame = CGRect(x: 24, y: 80, width: 272, height: 410)
//        imageview.layer.borderWidth = 10
//        imageview.layer.borderColor = UIColor.lightGray.cgColor
//        self.view.addSubview(imageview)
        
        //给图像添加圆角
//        let immge = UIImage(named: "aug.jpg")
//        let imgeview = UIImageView(image: immge)
//        let rect = CGRect(x: 10, y: 80, width: 256, height: 256)
//        imgeview.frame = rect
//        imgeview.layer.cornerRadius = 128
//        imgeview.layer.masksToBounds = true
//        self.view.addSubview(imgeview)
        
        //给图像添加长按点击事件
//        let image = UIImage(named: "aug,jpg")
//        let imageview = UIImageView(image: image)
//        imageview.frame = CGRect(x: 10, y: 80, width: 300, height: 300)
//        imageview.isUserInteractionEnabled = true
//        self.view.addSubview(imageview)
//        let gusture = UILongPressGestureRecognizer(target: self, action: #selector(singleTap(_:)))
//        imageview.addGestureRecognizer(gusture)
        
        //给图像添加双击事件
//        let image = UIImage(named: "aug,jpg")
//        let imageView = UIImageView(image: image)
//        imageView.frame = CGRect(x: 30, y: 80, width: 250, height: 250)
//        self.view.addSubview(imageView)
//        let guesture = UITapGestureRecognizer(target: self, action: #selector(doubleTap(_:)))
//        guesture.numberOfTapsRequired = 2
//        guesture.numberOfTouchesRequired = 1
//        imageView.addGestureRecognizer(guesture)
        
        
        
        
    }
    //给图像添加双击事件
//    @objc func doubleTap(_ gusture:UITapGestureRecognizer){
//        let alertview = UIAlertController(title: "Information", message: "title", preferredStyle: UIAlertController.Style.alert)
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: {_ in })
//        alertview.addAction(okAction)
//        self.present(alertview, animated: true, completion: nil)
//    }

    //图像视图长按点击事件
//    @objc func singleTap(_ guesture:UILongPressGestureRecognizer){
//        if (guesture.state == UIGestureRecognizer.State.began) {
//            let alertview = UIAlertController(title: "Information", message: "Long press", preferredStyle: UIAlertController.Style.alert)
//            let okaction = UIAlertAction(title: "OK", style: .default, handler: {_ in })
//            alertview.addAction(okaction)
//            self.present(alertview, animated: true, completion: nil)
//        }
//
//    }
    

//    @objc func singleTap(_ gusture:UITapGestureRecognizer){
//        print(gusture.numberOfTapsRequired)
//        print(gusture.numberOfTouchesRequired)
//        let alertview = UIAlertController(title: "Information", message: "Single Tap", preferredStyle: UIAlertController.Style.alert)
//        let Okaction = UIAlertAction(title: "OK", style: .default, handler: {_ in
//
//        })
//        alertview.addAction(Okaction)
//        self.present(alertview,animated: true,completion: nil)
//        }
        
        
    }
    
    


