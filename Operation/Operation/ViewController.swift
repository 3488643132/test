//
//  ViewController.swift
//  Operation
//
//  Created by student on 2021/3/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        op1()
    }


}
extension ViewController{

    func op1() {
        let opOne = OperationQueue()

        let opFrist = BlockOperation{
            for i in 10...20{
                print(i)
            }
        }
        
        let opSecond = BlockOperation{
            for i in 20...30{
                print(i)
            }
        }
        
        opOne.addOperations([opFrist,opSecond], waitUntilFinished: true)
        
    }
    

    
}

