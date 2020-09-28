//
//  productpage.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 4/28/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit

class productpage : UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var photo: [product] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photo.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let image = photo[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "productcell") as! TableCellProduct

        cell.setproduct(photo: image)

        return cell

    }
    
   
    
    
    
    
    
//    let productname = ["Sometinc Niacinamide + Moisture Beet Serum", "Sometinc Hylarunic B5","Sometinc AHA/BHA Peeling Solution",
//    "Sometinc C-Riously 24K Gold Essence"]
//
//    let photoname = ["hylarunic", "niacinamide", "peeling", "vitc"]
    
    func createArray() -> [product]{
        
        var tempPhoto: [product] = []
        
        let photo1 = product(image: UIImage(named: "vitc.jpeg")! , title: "CRIOUSLY 24K GOLD Essence", desc: "Vitamin C that prepares your skin to glow from within!",rate: UIImage(named: "starrate.png")!)
        let photo2 = product(image: UIImage(named: "hyaluronic.jpeg")! , title: "HYALuronic B5 Serum", desc: "The Key Molecule involved in Skin Moisture & Aged Skin",rate: UIImage(named: "starrate.png")!)
        let photo3 = product(image: UIImage(named: "peeling.jpeg")! , title: "AHA BHA PHA Peeling Solution", desc: "Help to clean clogged pores",rate: UIImage(named: "starrate.png")!)
        let photo4 = product(image: UIImage(named: "niacinamide.jpeg")! , title: "Niacinamide + Moisture Beet Serum", desc: "Say goodbye to Dark Spot, Dull, & Tired Skin!",rate: UIImage(named: "starrate.png")!)
        
        
        
        tempPhoto.append(photo1)
        tempPhoto.append(photo2)
        tempPhoto.append(photo3)
        tempPhoto.append(photo4)
      
        return tempPhoto
    }
   
  
     override func viewDidLoad() {
            super.viewDidLoad();
            photo = createArray()
        
     }
    
  
    
    
}
