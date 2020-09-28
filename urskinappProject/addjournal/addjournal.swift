//
//  addjournal.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 4/28/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit
import AVFoundation
class addjournal:UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
 
    @IBOutlet weak var myimageview: UIImageView!
   
    @IBAction func takepicture(_ sender: Any) {
       // if UIImagePickerController.isSourceTypeAvailable(.camera){
            let image = UIImagePickerController()
            image.delegate=self
             image.allowsEditing = false
            image.sourceType = UIImagePickerController.SourceType.camera
            self.present(image, animated: true,completion: nil)
        //}
    }
    
    @IBAction func importimage(_ sender: UIButton) {
    
        let image = UIImagePickerController()
        image.delegate=self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true)
       
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
              fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
          }

          // Set photoImageView to display the selected image.
        myimageview.image = image

          // Dismiss the picker.
        self.dismiss(animated: true, completion: nil)
        }
        
    
    
    }
    
        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



