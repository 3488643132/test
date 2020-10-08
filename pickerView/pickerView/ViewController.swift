//
//  ViewController.swift
//  pickerView
//
//  Created by student on 2020/10/8.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 let province = ["安徽","浙江","河北","广西","四川","湖北","广东"]
 var city = ["合肥","杭州","石家庄","青海","武汉","芜湖","北京","哈尔滨","漠河","成都"]
    @IBOutlet weak var pickview: UIPickerView!
    override func viewDidLoad() {

        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.pickview.dataSource = self
        self.pickview.delegate = self
    
    }


}

extension ViewController:UIPickerViewDataSource{
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return province.count
        }
        return city.count
    }
    
    
    
}
extension ViewController:UIPickerViewDelegate{
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
             return province[row]
        }
       return city[row]
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let image = UIImageView(image: UIImage(systemName: "people"))
        image.frame = CGRect(x: 0, y: 0, width: 50, height: 44)
        
        return image
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
        if row == 0 {
            return city = ["合肥","芜湖","阜阳","宿州"]}
            else if component == 1{
                return city = ["杭州","金华","湖州","略"]
            }else{
                return city = ["合肥","杭州","石家庄","青海","武汉","芜湖","北京","哈尔滨","漠河","成都"]
            }
pickerView.reloadAllComponents()
            }
        }
    }
    
    

