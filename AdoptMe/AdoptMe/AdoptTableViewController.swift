//
//  AdoptTableViewController.swift
//  AdoptMe
//
//  Created by don't touch me on 7/6/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class AdoptTableViewController: UITableViewController {
    
    var dogsArray = [Dog]()
    var currentDog: Dog?

    override func viewDidLoad() {
        super.viewDidLoad()

        let Athena = Dog(name: "Athena", breed: "Chihuahua", imageName: "d1Athena", age: "Adult", size: "Small", gender: "Female")
        self.dogsArray.append(Athena)

        let Audi = Dog(name: "Audi", breed: "Crossbreed", imageName: "d2Audi", age: "Young Adult", size: "Medium", gender: "Female")
        self.dogsArray.append(Audi)
        
        let Basil = Dog(name: "Basil", breed: "Crossbreed", imageName: "d3Basil", age: "Adult", size: "Large", gender: "Male")
        self.dogsArray.append(Basil)
        
        let Beaufort = Dog(name: "Beaufort", breed: "Hound", imageName: "d4Beaufort", age: "Adult", size: "Large", gender: "Male")
        self.dogsArray.append(Beaufort)
        
        let Biroldo = Dog(name: "Biroldo", breed: "Crossbreed", imageName: "d5Biroldo", age: "Adult", size: "Small", gender: "Male")
        self.dogsArray.append(Biroldo)
        
        let Calvin = Dog(name: "Calvin", breed: "Crossbreed", imageName: "d6Calvin", age: "Senior", size: "Medium", gender: "Male")
        self.dogsArray.append(Calvin)
        
        let Caspian = Dog(name: "Caspian", breed: "Pit Bull Terrier", imageName: "d7Caspian", age: "Young", size: "Large", gender: "Male")
        self.dogsArray.append(Caspian)
        
        let Cher = Dog(name: "Cher", breed: "Crossbreed", imageName: "d8Cher", age: "Adult", size: "Medium", gender: "Female")
        self.dogsArray.append(Cher)
        
        let Cora = Dog(name: "Cora", breed: "Pit Bull Terrier", imageName: "d9Cora", age: "Adult", size: "Large", gender: "Female")
        self.dogsArray.append(Cora)
        
        let Cotechino = Dog(name: "Cotechino", breed: "Crossbreed", imageName: "d10Cotechino", age: "Senior", size: "Small", gender: "Male")
        self.dogsArray.append(Cotechino)
        
        let Daisy = Dog(name: "Daisy", breed: "Pit Bull Terrier", imageName: "d11Daisy", age: "Young", size: "Medium", gender: "Female")
        self.dogsArray.append(Daisy)
        
        let Flick = Dog(name: "Flick", breed: "Pit Bull Terrier", imageName: "d12Flick", age: "Adult", size: "Large", gender: "Male")
        self.dogsArray.append(Flick)
        
        let Froggers = Dog(name: "Froggers", breed: "Boston Terrier", imageName: "d13Froggers", age: "Senior", size: "Medium", gender: "Male")
        self.dogsArray.append(Froggers)
        
        let Hendrick = Dog(name: "Hendrick", breed: "Crossbreed", imageName: "d14Hendrick", age: "Senior", size: "Large", gender: "Male")
        self.dogsArray.append(Hendrick)
        
        let Jude = Dog(name: "Jude", breed: "Crossbreed", imageName: "d15Jude", age: "Senior", size: "Medium", gender: "Male")
        self.dogsArray.append(Jude)
        
        let Kellie = Dog(name: "Kellie", breed: "Rat Terrier", imageName: "d16Kellie", age: "Adult", size: "Small", gender: "Female")
        self.dogsArray.append(Kellie)
        
        let Kevin = Dog(name: "Kevin", breed: "Crossbreed", imageName: "d17Kevin", age: "Adult", size: "Medium", gender: "Male")
        self.dogsArray.append(Kevin)
        
        let Lady = Dog(name: "Lady", breed: "Crossbreed", imageName: "d18Lady", age: "Adult", size: "Medium", gender: "Female")
        self.dogsArray.append(Lady)
        
        let Liesl = Dog(name: "Liesl", breed: "Pit Bull Terrier", imageName: "d19Liesl", age: "Young", size: "Medium", gender: "Female")
        self.dogsArray.append(Liesl)
        
        let Lucy = Dog(name: "Lucy", breed: "Crossbreed", imageName: "d20Lucy", age: "Young", size: "Large", gender: "Female")
        self.dogsArray.append(Lucy)
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dogsArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DogsTableViewCell
        
        let pooch = self.dogsArray[indexPath.row]
        
        cell.dogName.text = pooch.name
        cell.breedName.text = pooch.breed
        cell.dogImage.image = UIImage(named: pooch.imageName)
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        

    }
    
    
    
    
    
}
