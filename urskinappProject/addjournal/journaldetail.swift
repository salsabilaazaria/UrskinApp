//
//  journaldetail.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 5/5/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit

class journaldetail: UIViewController {

   
    
    @IBOutlet weak var stress: UIButton!

    @IBAction func stressed(_ sender: Any) {
    
        stress.backgroundColor = .brown
       
    }
    
    
    @IBOutlet weak var fine: UIButton!
    @IBAction func fine(_ sender: Any) {
        fine.backgroundColor = .brown
    }
    
    @IBOutlet weak var great: UIButton!
    @IBAction func great(_ sender: Any) {
        great.backgroundColor = .brown
    }
    
    @IBOutlet weak var sixtoeight: UIButton!

    @IBAction func sixtoeight(_ sender: Any) {
        sixtoeight.backgroundColor = .brown
    }
    
    
    @IBOutlet weak var lesssix: UIButton!
    @IBAction func lesssix(_ sender: Any) {
        
        lesssix.backgroundColor = .brown
    }
    
    
    @IBOutlet weak var moreeight: UIButton!
    @IBAction func moreeight(_ sender: Any) {
        moreeight.backgroundColor = .brown
    }
    
    
  
    @IBOutlet weak var badskin: UIButton!
    @IBAction func badskin(_ sender: Any) {
        badskin.backgroundColor = .brown
    }
    
    @IBOutlet weak var fineskin: UIButton!
    @IBAction func fineskin(_ sender: Any) {
        fineskin.backgroundColor = .brown
    }
    
    
    @IBOutlet weak var greatskin: UIButton!
    @IBAction func greatskin(_ sender: Any) {
        
        greatskin.backgroundColor = .brown
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
