//
//  RightTableViewCell.swift
//  TableViewCellExample
//
//  Created by Sridevi Panyam on 8/11/18.
//  Copyright © 2018 SP. All rights reserved.
//

import UIKit

class RightTableViewCell: UITableViewCell {
    @IBOutlet weak var rightCellImage: UIImageView!
    @IBOutlet weak var rightCellLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
