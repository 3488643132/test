//
//  ModelTutorialList.swift
//  互动教程
//
//  Created by Apple on 2021/2/6.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import Foundation
class ModelTutoriallist: NSObject {
    var item : [ModelTutorial]
    override init() {
        self.item = [ModelTutorial]()
        let itemTitles = ["Active Label Supporting hashtags, mentions,Links","A Circle Progress Bar","A Custom TextField with A Switchable Icon","Render HTML And GIF with UIWebview","Create a Note By HTML5 ","Add A Point Annotation To MKMapView"]
        
        for i in 0..<5 {
            let item = ModelTutorial()
            item.sequence = i + 1
            item.favoriteCount = Int.random(in: 12...20)
            item.fireCount = Int.random(in: 120...200)
            item.startCount = Int.random(in: 3...5)
            item.title = itemTitles[Int.random(in: 0..<5)]
            item.subTitle = "New accesories set"
            
            self.item.append(item)
        }
    }
    
}
