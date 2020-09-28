//
//  ResultViewController.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 1/11/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit

class ResultViewController:
UIViewController{

    
    @IBOutlet weak var productcollectionview: UICollectionView!
    
//    @IBOutlet weak var skindescription: UILabel!
   
    
    @IBOutlet weak var ingredient1: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
   
    @IBOutlet weak var descing1: UILabel!
    
    @IBOutlet weak var ingredient2: UILabel!
    
    @IBOutlet weak var descing2: UILabel!
    
    var skintype = "lalalalal"
    var skinproblem = "lalal"
   let ingredientname = ["Hylarunic Acid", "Niacinamide", "Moisture Beet Serum", "Vitamin C"]
      var desc = ["The Key Molecule involved in Skin Moisture & Aged Skin","It helps to remove Dark Spot, Dull, & Tired Skin","Help to clean clogged pores","Vitamin C that prepares your skin to glow from within!"]
    
    func ingredient(){
        if skinproblem == "brightening"{
            ingredient1.text=ingredientname[3]
            descing1.text = desc[3]
            
            ingredient2.text=ingredientname[0]
            descing2.text = desc[0]
        }
        else if skinproblem == "dry"{
            ingredient1.text=ingredientname[0]
            descing1.text = desc[0]
            ingredient2.text=ingredientname[2]
            descing2.text = desc[2]
        }
        else if skinproblem == "acne"{
            ingredient1.text=ingredientname[1]
            descing1.text = desc[1]
            ingredient2.text=ingredientname[2]
            descing2.text = desc[2]
        }
        
    }
    
    


  
    override func viewDidLoad() {
        super.viewDidLoad()
        ResultLabel.text!=skintype
        ingredient()
        
        
      
//CODING KL MAU NAMBAHIN DESKRIPSI
//        if skintype == "SENSITIVE"{
//            skindescription.text = "Skin is prone to itching and irritation experienced as a subjective sensation when using cosmetics and toiletries. you might want to really consider on any of your skin product"
//
//        }
//
//        else if skintype == "OILY"{
//            skindescription.text =
//            "Your face produce an excess sebum(oil) and it could be leading you to an open pores, a shiny complexion, blackheads, and pimples if you don’t treat it right"
//        }
//
//       else if skintype == "DRY"{
//            skindescription.text = "Your skin can crack, peel, or become itchy, irritated, or inflamed. If it’s very dry, it can become rough and scaly, especially on the backs of your hands, arms, and legs."
//        }
//
//       else if skintype == "NORMAL" {
//            skindescription.text = "CONGRATULATION!You have a great skin. Your skin is well-balanced. It’s not too dry or not too oily either. Take care of it wisely!"
//        }
//
//       else if skintype == "COMBINATION" {
//            skindescription.text = "your skin having mix skintype. it could be you having an oily skin in someareas of your face and dry skin in other areas. It might be a little tricky to treat it right"
//        }
//
//
//        else {
//            skindescription.text = "error"
//        }
       
        
    }
    

 
}
