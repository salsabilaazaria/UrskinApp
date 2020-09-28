//
//  TableCellJournal.swift
//  urskinappProject
//
//  Created by Salsabila Azaria on 4/30/20.
//  Copyright © 2020 salsabilaazaria. All rights reserved.
//

import UIKit

class TableCellJournal: UITableViewCell,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    var detaildescjournal = ["Feeling", "Condition", "Sleep"]
  var detailjournals = ["average", "goodskin", "6to8"]

    
    @IBOutlet weak var detailjournalcollectionview: UICollectionView!
    @IBOutlet weak var selfie: UIImageView!
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var desclabel: UILabel!
    
    func setproduct(journals: journal){
        selfie.image = journals.facephoto
        datelabel.text = journals.date
        desclabel.text = journals.desc
          
      }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailjournals.count
      }
      
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        let cell = detailjournalcollectionview.dequeueReusableCell(withReuseIdentifier: "CollectionCellJournal", for: indexPath) as! CollectionViewDetailJournal
        
      cell.detailImage.image = UIImage(named: detailjournals[indexPath.row])
        cell.detaildesc.text = detaildescjournal[indexPath.row]
        
        return cell
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: 50, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
   
   
    
//    func createArray() -> [detailjournal]{
//
//           var tempDetailJournal: [detailjournal] = []
//
//        let detailjournal1 = detailjournal(detailphoto: UIImage(named: "average.png")!)
//        let detailjournal2 = detailjournal(detailphoto: UIImage(named: "goodskin.png")!)
//        let detailjournal3 = detailjournal(detailphoto: UIImage(named: "6to8.png")!)
//
//
//
//
//        tempDetailJournal.append(detailjournal1)
//        tempDetailJournal.append(detailjournal2)
//        tempDetailJournal.append(detailjournal2)
//
//           return tempDetailJournal
//       }
    
    override func awakeFromNib() {
           super.awakeFromNib()
           detailjournalcollectionview.delegate = self
           detailjournalcollectionview.dataSource = self
       }
    
    
    
   
}
