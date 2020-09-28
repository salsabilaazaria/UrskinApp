//
//  TableCellProduct.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 4/30/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit

class TableCellProduct: UITableViewCell {

    @IBOutlet weak var productdesc: UILabel!
    @IBOutlet weak var productname: UILabel!
    @IBOutlet weak var productphoto: UIImageView!
    @IBOutlet weak var starrate: UIImageView!
    
    func setproduct(photo: product){
        productphoto.image = photo.image
        productname.text = photo.title
        productdesc.text = photo.desc
        starrate.image = photo.rate
        
    }
 

}
