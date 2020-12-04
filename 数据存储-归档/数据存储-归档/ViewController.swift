//
//  ViewController.swift
//  数据存储-归档
//
//  Created by student on 2020/12/4.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var data:Data!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func save(_ sender: Any) {
        let person = Person()
        person.name = "lishi"
        person.age = 12
        do {
            try data = NSKeyedArchiver.archivedData(withRootObject: person, requiringSecureCoding: true)
        } catch {
            print(error)
        }
        
    }
    
    @IBAction func get(_ sender: Any) {
        let person:Person?
        do {
            try person = NSKeyedUnarchiver.unarchivedObject(ofClass: Person.self, from: data)
            print(person?.name)
            print(person?.age)
        } catch {
            print(error)
        }
        
    }
}

