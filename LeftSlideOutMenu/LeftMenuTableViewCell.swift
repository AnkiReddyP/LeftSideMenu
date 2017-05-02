//
//  LeftMenuTableViewCell.swift
//  LeftSlideOutMenu
//
//  Created by anki on 4/24/17.
//  Copyright © 2017 IOS. All rights reserved.
//

import UIKit

class LeftMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var leftMenuImage: UIImageView!
    
    @IBOutlet weak var leftMenuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
