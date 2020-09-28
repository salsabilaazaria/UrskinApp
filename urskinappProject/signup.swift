//
//  signup.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 5/6/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit

class signup: UIViewController {

    @IBOutlet weak var dobtext: UITextField!
  
    let datepicker = UIDatePicker()
    func createdatepicker(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donepressed))
        
        toolbar.setItems([done], animated: false)
        dobtext.inputAccessoryView = toolbar
        dobtext.inputView = datepicker
        
        datepicker.datePickerMode = .date
    }
    
    @objc func donepressed(){
        let format = DateFormatter()
        format.dateStyle = .medium
        format.timeStyle = .none
      
        
        let datestring = format.string(from: datepicker.date)
        
        dobtext.text = "\(datestring)"
        self.view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createdatepicker()

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
