//
//  abc.swift
//  UI-WeChat
//
//  Created by Apple on 2021/3/27.
//  Copyright © 2021 crazyit.ong. All rights reserved.
//

import UIKit

class abc: UITableViewCell {


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    required init?(coder aDecorder: NSCoder) {
        super.init(coder: aDecorder)!
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
    }

}
