//
//  ListOfThings.swift
//  TableViewCellExample
//
//  Created by Sridevi Panyam on 8/11/18.
//  Copyright © 2018 SP. All rights reserved.
//

import Foundation
import UIKit

class ListOfThings {
    var thingImage = UIImage()
    var thingDescription = String()
    var imageAlignment = String()
    
    init(thingImage: UIImage, thingDescription: String, imageAlignment: String) {
        self.thingImage = thingImage
        self.thingDescription = thingDescription
        self.imageAlignment = imageAlignment
    }
}
