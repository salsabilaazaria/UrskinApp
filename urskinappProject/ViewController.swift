//
//  ViewController.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 12/12/19.
//  Copyright © 2019 salsabilaazaria. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    

    
    var oily = UserDefaults.standard.string(forKey: "oily")
    var breakout = UserDefaults.standard.string(forKey:"breakout")
    var drypatches = UserDefaults.standard.string(forKey:"drypatches")
    var iritated = UserDefaults.standard.string(forKey:"iritated")
    var conclussion = " "
    var skintypeResult = ""
    var skinconcern = UserDefaults.standard.string(forKey: "skinconcern")
    

   
  
    @IBAction func Brightening(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set("brightening", forKey: "skinconcern")
    }
    
    @IBAction func dryskin(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set("dry", forKey: "skinconcern")
    }
    
    @IBAction func Acne(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set("acne", forKey: "skinconcern")
    }
    
    @IBAction func AllOily(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set("all", forKey: "oily")
        
      
    }
    

    @IBAction func TzoneOily(_ sender: Any) {
       let defaults = UserDefaults.standard

          defaults.set("tzone", forKey: "oily")
       
       
    }
    
    @IBAction func NeverOily(_ sender: Any) {
            let defaults = UserDefaults.standard

           defaults.set("Never", forKey: "oily")
        
    }
    
    
    
    @IBAction func EasilyBreakout(_ sender: Any) {
              let defaults = UserDefaults.standard

            defaults.set("easily", forKey: "breakout")
            
    }
    
    @IBAction func SometimesBreakout(_ sender: Any) {
              let defaults = UserDefaults.standard

            defaults.set("sometimes", forKey: "breakout")
           
      
    }
    
    @IBAction func NeverBreakout(_ sender: Any) {
              let defaults = UserDefaults.standard

            defaults.set("never", forKey: "breakout")
          
    }
    
    
    @IBAction func ManyDrypacthes(_ sender: Any) {
              let defaults = UserDefaults.standard

            defaults.set("many", forKey: "drypatches")
         
    }
    
    @IBAction func SomeDrypatches(_ sender: Any) {
          let defaults = UserDefaults.standard

                defaults.set("some", forKey: "drypatches")
                
    }
    
    @IBAction func NopeDrypatches(_ sender: Any) {
           let defaults = UserDefaults.standard

                defaults.set("nope", forKey: "drypatches")
                
    }
    
    @IBAction func EasilyIritated(_ sender: Any) {
            let defaults = UserDefaults.standard

                defaults.set("easily", forKey: "iritated")
         
    }
    
    @IBAction func SometimesIritated(_ sender: Any) {
         let defaults = UserDefaults.standard

                defaults.set("sometimes", forKey: "iritated")
       
    }
    
    
    @IBAction func NeverIritated(_ sender: Any) {
        
          let defaults = UserDefaults.standard

                defaults.set("never", forKey: "iritated")
               
      
    }
    
    
    @IBAction func GoToResult(_ sender: Any) {
        print ("oily" ,oily!, "breakout" ,breakout ?? "error","drypatches", drypatches ?? "error" , "iritated", iritated ?? "error")
        self.predictskintype()
        
        performSegue(withIdentifier: "result", sender: self)
  
      
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "result"{
        let resultvc = segue.destination as! ResultViewController
        let concerntvc = segue.destination as! ResultViewController
//       let resulttab = segue.destination as! ResultUIView
//       let concerntab = segue.destination as! ResultUIView
       resultvc.skintype = self.skintypeResult
        concerntvc.skinproblem = self.skinconcern ?? "lala"
//        concerntab.skinproblem = self.skinconcern ?? "lala"
//        resulttab.skinlabel = self.skintypeResult
            print(skinconcern ?? "nill")
        
        }
    }
    


    func predictskintype(){
        print ("func")
        let model = DecisionTreeClassifier()
     
          
            guard let classifier = try? model.prediction(breakout: breakout!, oily: oily!, drypatches:drypatches!, iritated: iritated!) else { fatalError("Unexpected runtime error.")}
            
            
            let result = classifier.conclussion
            
         skintypeResult = result
         print(skintypeResult)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
   
     
   
             // Do any additional setup after loading the view.
         }
}
