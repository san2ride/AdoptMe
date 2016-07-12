//
//  ProfileViewController.swift
//  AdoptMe
//
//  Created by don't touch me on 7/12/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileText: UITextView!
    
    var theDogs: Dog?
    

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let dawg = self.theDogs {
            self.nameLabel?.text = dawg.name
            self.profileView?.image = UIImage(named: dawg.imageName)
            self.profileText?.text = dawg.profile
            
        }
    }

}
    
    
    
    
    

