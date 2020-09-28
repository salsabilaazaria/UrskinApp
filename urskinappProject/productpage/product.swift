//
//  product.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 4/30/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import Foundation
import UIKit

class product{
    
    var image: UIImage
    var title: String
    var desc: String
    var rate: UIImage
    init(image:UIImage, title: String, desc: String, rate: UIImage){
        self.image = image
        self.title = title
        self.desc = desc
        self.rate = rate
    }
}
