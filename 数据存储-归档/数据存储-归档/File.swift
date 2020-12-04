//
//  File.swift
//  数据存储-归档
//
//  Created by student on 2020/12/4.
//  Copyright © 2020 student. All rights reserved.
//

import Foundation

class Person:NSObject, NSSecureCoding {

    
    var name:String?
    var age:Int?
    
    override init() {
        
    }
    static var supportsSecureCoding: Bool = true
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(age, forKey: "age")
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String
        age = coder.decodeObject(forKey: "age") as? Int
    }
  
    
}
