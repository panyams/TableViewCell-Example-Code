//
//  ListOfThingsCellLeft.swift
//  TableViewCellExample
//
//  Created by Sridevi Panyam on 8/11/18.
//  Copyright © 2018 SP. All rights reserved.
//

import UIKit

class ListOfThingsCellLeft: UITableViewCell {
    @IBOutlet weak var leftListImage: UIImageView!
    
    @IBOutlet weak var leftListText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
