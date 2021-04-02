//
//  ModelTutorial.swift
//  互动教程
//
//  Created by Apple on 2021/2/6.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import Foundation

enum TutorialStatus {
    case none
    case Undone
    case completed
}

class ModelTutorial: NSObject {
    var sequence : Int
    var status : TutorialStatus
    var title : String
    var subTitle : String
    var startCount : Int
    var fireCount : Int
    var favoriteCount : Int
    
    override init() {
        let count = Int.random(in: 1...3)
        if (count == 1) {
            self.status = .none
        }
        else if(count == 2)
        {
            self.status = .Undone
        }
        else
        {
            self.status = .completed
        }
        self.sequence = 1
        self.title = "Getting started with SwiftUi"
        self.subTitle = "New accesories set"
        self.favoriteCount = 0
        self.startCount = 1
        self.fireCount = 1
    }
    
    
    
}
