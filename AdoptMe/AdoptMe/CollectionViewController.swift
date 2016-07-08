//
//  CollectionViewController.swift
//  AdoptMe
//
//  Created by don't touch me on 7/8/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell2"

class CollectionViewController: UICollectionViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataStore.sharedInstance.numbersOfDogs()
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! PoochCollectionViewCell
        
        let pooch = DataStore.sharedInstance.adoptAtIndex(indexPath.row)
        
        if let imageDog = pooch?.image {
            
            cell.collectionView.image = imageDog
            
        }
        
        return cell
    }
    
    
}
