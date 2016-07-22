//
//  ViewController.swift
//  TestCollection
//
//  Created by Ullas Kumar on 22/07/16.
//  Copyright © 2016 Ullas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    var arrayofcellcollectioncount = [""]
    
    @IBOutlet weak var collectionheight: NSLayoutConstraint!
    @IBOutlet weak var cviewCollection1: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
//        self.cviewCollection1.delegate = self
//        self.cviewCollection1.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return arrayofcellcollectioncount.count
    }
    
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("OneCell", forIndexPath: indexPath) as! OneCollectionViewCell
        cell.txtCollection.text = "indexpath = \(indexPath.row)"
        cell.btnOneNewcell.tag = indexPath.row
        cell.txtCollection.tag = indexPath.row
        cell.btnRemovecell.tag = indexPath.row
        return cell
    }
    
  
    @IBAction func btnNewCell(sender: AnyObject) {
        print(arrayofcellcollectioncount.count)

        arrayofcellcollectioncount.append("")
        print(arrayofcellcollectioncount.count)

        collectionheight.constant = 160 * CGFloat(arrayofcellcollectioncount.count)
        cviewCollection1.reloadData()
        
        
    }
    
    
    @IBAction func btnRemoveCell(sender: AnyObject) {

        
        if arrayofcellcollectioncount.count > 1
        {
        
        print(arrayofcellcollectioncount.count)

        arrayofcellcollectioncount.removeAtIndex(sender.tag)
        print(arrayofcellcollectioncount.count)
         cviewCollection1.reloadData()
            collectionheight.constant = 160 * CGFloat(arrayofcellcollectioncount.count)
            
        }
        
    }
    
    
    
}

