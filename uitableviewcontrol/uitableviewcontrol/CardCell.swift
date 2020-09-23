//
//  CardCell.swift
//  uitableviewcontrol
//
//  Created by Apple on 2020/9/20.
//  Copyright © 2020 crazyit.ong. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var weaponLabel: UILabel!
    @IBOutlet weak var favBtn: UIButton!
  
    @IBOutlet weak var orignlabel: UILabel!
    
    @IBOutlet weak var backimageview: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
