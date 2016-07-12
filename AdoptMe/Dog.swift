//
//  Dog.swift
//  AdoptMe
//
//  Created by don't touch me on 7/6/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class Dog: NSObject {
    
    var name: String
    var breed: String
    var imageName: String
    var age: String
    var size: String
    var gender: String
    var image : UIImage? {
        return UIImage(named: self.imageName)
    }
    
    init(name: String, breed: String, imageName: String, age: String, size: String, gender: String) {
        
        self.name = name
        self.breed = breed
        self.imageName = imageName
        self.age = age
        self.size = size
        self.gender = gender
    }
    

}
