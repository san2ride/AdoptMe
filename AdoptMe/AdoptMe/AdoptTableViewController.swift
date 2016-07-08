//
//  AdoptTableViewController.swift
//  AdoptMe
//
//  Created by don't touch me on 7/6/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class AdoptTableViewController: UITableViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataStore.sharedInstance.numbersOfDogs()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DogsTableViewCell
        
        if let pooch = DataStore.sharedInstance.adoptAtIndex(indexPath.row) {
            
            
            cell.dogName.text = pooch.name
            cell.breedName.text = pooch.breed
            cell.dogImage.image = UIImage(named: pooch.imageName)
            
        }
        
        
        
        return cell
        
    }
    
    
}
