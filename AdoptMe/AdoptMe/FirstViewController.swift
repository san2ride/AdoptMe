//
//  FirstViewController.swift
//  AdoptMe
//
//  Created by don't touch me on 7/6/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CardStackDelegate {
    
    @IBOutlet weak var cardStackView: CardStack!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // IMPORTANT
        
        self.cardStackView.delegate = self

    }
    
    func cardNotInterested(dog: Dog) {
        print("not interested")
    }
    
    func cardInterested(dog: Dog) {
        print("interested")
    }

}

