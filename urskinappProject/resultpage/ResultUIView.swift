//
//  ResultUIView.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 4/29/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit

class ResultUIView:
   UIViewController {
    var skinlabel = "SENSITIVE"
    var skinproblem = "acne"
    let ingredientname = ["Hylarunic Acid", "Niacinamide", "Moisture Beet Serum", "Vitamin C"]
    
    var desc = ["The Key Molecule involved in Skin Moisture & Aged Skin","It helps to remove Dark Spot, Dull, & Tired Skin","Help to clean clogged pores","Vitamin C that prepares your skin to glow from within!"]
    @IBOutlet weak var skintypelabel: UILabel!
    @IBOutlet weak var ingredient1: UILabel!
    @IBOutlet weak var ingredient2: UILabel!
    
   func ingredient(){
          if skinproblem == "brightening"{
              ingredient1.text!=ingredientname[3]
              ingredient2.text!=ingredientname[0]
          }
          else if skinproblem == "dry"{
              ingredient1.text!=ingredientname[0]
              ingredient2.text!=ingredientname[2]
          }
          else if skinproblem == "acne"{
              ingredient1.text!=ingredientname[1]
              ingredient2.text!=ingredientname[2]
          }
          
      }
    
   
   override func viewDidLoad() {
    super.viewDidLoad()
    skintypelabel.text!=skinlabel
    ingredient()
    }
//   
}
