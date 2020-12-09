//
//  ViewController.swift
//  弹簧动画
//
//  Created by student on 2020/12/9.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fristview: UIView!
    @IBOutlet weak var secondview: UIView!
    @IBOutlet weak var thridview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 3.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 50, options: .curveEaseInOut, animations: {
            self.fristview.center = CGPoint(x: self.fristview.center.x, y: self.fristview.center.y + 280)
        }) { (_) in
            print("弹簧动画，执行完毕")
        }
        UIView.animate(withDuration: 3.0, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 40, options: .curveEaseInOut, animations: {
            self.secondview.center = CGPoint(x: self.secondview.center.x, y: self.secondview.center.y + 280)
        }) { (_) in
            print("弹簧动画，执行完毕")
        }
        UIView.animate(withDuration: 3.0, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 30, options: .curveEaseInOut, animations: {
            self.thridview.center = CGPoint(x: self.thridview.center.x, y: self.thridview.center.y + 280)
        }) { (_) in
            print("弹簧动画，执行完毕")
        }
        
        //弹簧动画
        let fourthview = UIView(frame: CGRect(x: self.view.center.x, y: self.view.center.y, width: 200, height: 200))
        fourthview.backgroundColor = .red
        
//        UIView.transition(from: fristview, to: fourthview, duration: 2.0, options: .transitionFlipFromBottom) { (_) in
//            print("专场动画")
//        }
        UIView.transition(with: fristview, duration: 2.0, options: .transitionCrossDissolve, animations: {
            fourthview.center = self.fristview.convert(self.fristview.center, from: self.view)
            self.fristview.addSubview(fourthview)
        }) { (_) in
            print("view")
        }
    }

}

