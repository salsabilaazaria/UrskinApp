//
//  journalpage.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 4/30/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit

class journalpage: UIViewController,UITableViewDataSource,UITableViewDelegate {
   

    
    @IBOutlet weak var journaltableview: UITableView!
    
    var journals: [journal] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return journals.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let journal = journals[indexPath.row]
               let cell = journaltableview.dequeueReusableCell(withIdentifier: "TableCellJournal") as! TableCellJournal
            cell.setproduct(journals: journal)
               
               return cell
       }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
       
    func createArray() -> [journal]{
           
           var tempJournal: [journal] = []
           
        let journal1 = journal(facephoto: UIImage(named: "selfie2.png")!, date: "Mar 02", desc: "It's holiday timee! I tried my new skincare product. My Skin look great! im so happy")
        
         let journal2 = journal(facephoto: UIImage(named: "selfie.png")!, date: "Apr 30", desc: "Back to school... There are too many assignments, i don't have time for skincare routine")
      
        tempJournal.append(journal1)
      
         
           return tempJournal
       }
    override func viewDidLoad() {
        super.viewDidLoad()
        journals = createArray()
    }
    

   

}
