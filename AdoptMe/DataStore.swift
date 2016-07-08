//
//  DataStore.swift
//  AdoptMe
//
//  Created by don't touch me on 7/8/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class DataStore: NSObject {
    
    static let sharedInstance = DataStore()
    override private init() {}
    
    private var favDogArray = [Dog]()
    private var adoptMeArray = [Dog]()

    func seedDogs() {
        
        let Athena = Dog(name: "Athena", breed: "Chihuahua", imageName: "d1Athena", age: "Adult", size: "Small", gender: "Female")
        self.addDog(Athena)
        
        let Audi = Dog(name: "Audi", breed: "Crossbreed", imageName: "d2Audi", age: "Young Adult", size: "Medium", gender: "Female")
        self.addDog(Audi)
        
        let Basil = Dog(name: "Basil", breed: "Crossbreed", imageName: "d3Basil", age: "Adult", size: "Large", gender: "Male")
        self.addDog(Basil)
        
        let Beaufort = Dog(name: "Beaufort", breed: "Hound", imageName: "d4Beaufort", age: "Adult", size: "Large", gender: "Male")
        self.addDog(Beaufort)
        
        let Biroldo = Dog(name: "Biroldo", breed: "Crossbreed", imageName: "d5Biroldo", age: "Adult", size: "Small", gender: "Male")
        self.addDog(Biroldo)
        
        let Calvin = Dog(name: "Calvin", breed: "Crossbreed", imageName: "d6Calvin", age: "Senior", size: "Medium", gender: "Male")
        self.addDog(Calvin)
        
        let Caspian = Dog(name: "Caspian", breed: "Pit Bull Terrier", imageName: "d7Caspian", age: "Young", size: "Large", gender: "Male")
        self.addDog(Caspian)
        
        let Cher = Dog(name: "Cher", breed: "Crossbreed", imageName: "d8Cher", age: "Adult", size: "Medium", gender: "Female")
        self.addDog(Cher)
        
        let Cora = Dog(name: "Cora", breed: "Pit Bull Terrier", imageName: "d9Cora", age: "Adult", size: "Large", gender: "Female")
        self.addDog(Cora)
        
        let Cotechino = Dog(name: "Cotechino", breed: "Crossbreed", imageName: "d10Cotechino", age: "Senior", size: "Small", gender: "Male")
        self.addDog(Cotechino)
        
        let Daisy = Dog(name: "Daisy", breed: "Pit Bull Terrier", imageName: "d11Daisy", age: "Young", size: "Medium", gender: "Female")
        self.addDog(Daisy)
        
        let Flick = Dog(name: "Flick", breed: "Pit Bull Terrier", imageName: "d12Flick", age: "Adult", size: "Large", gender: "Male")
        self.addDog(Flick)
        
        let Froggers = Dog(name: "Froggers", breed: "Boston Terrier", imageName: "d13Froggers", age: "Senior", size: "Medium", gender: "Male")
        self.addDog(Froggers)
        
        let Hendrick = Dog(name: "Hendrick", breed: "Crossbreed", imageName: "d14Hendrick", age: "Senior", size: "Large", gender: "Male")
        self.addDog(Hendrick)
        
        let Jude = Dog(name: "Jude", breed: "Crossbreed", imageName: "d15Jude", age: "Senior", size: "Medium", gender: "Male")
        self.addDog(Jude)
        
        let Kellie = Dog(name: "Kellie", breed: "Rat Terrier", imageName: "d16Kellie", age: "Adult", size: "Small", gender: "Female")
        self.addDog(Kellie)
        
        let Kevin = Dog(name: "Kevin", breed: "Crossbreed", imageName: "d17Kevin", age: "Adult", size: "Medium", gender: "Male")
        self.addDog(Kevin)
        
        let Lady = Dog(name: "Lady", breed: "Crossbreed", imageName: "d18Lady", age: "Adult", size: "Medium", gender: "Female")
        self.addDog(Lady)
        
        let Liesl = Dog(name: "Liesl", breed: "Pit Bull Terrier", imageName: "d19Liesl", age: "Young", size: "Medium", gender: "Female")
        self.addDog(Liesl)
        
        let Lucy = Dog(name: "Lucy", breed: "Crossbreed", imageName: "d20Lucy", age: "Young", size: "Large", gender: "Female")
        self.addDog(Lucy)
        
    }
    
    func adoptAtIndex(index: Int) -> Dog? {
        if self.adoptMeArray.count >= 0 && index < self.adoptMeArray.count {
            return self.adoptMeArray[index]
        }
        return nil
    }
    
    func addDog(dog: Dog) {
        self.adoptMeArray.append(dog)
    }
    
    func numbersOfDogs() -> Int {
        return self.adoptMeArray.count 
    }
        
    func favIndex(index: Int) -> Dog? {
        if self.favDogArray.count >= 0 && index < self.favDogArray.count {
            return self.favDogArray[index]
        }
        return nil
    }
    
    func addFavDogs(dog: Dog) {
        self.favDogArray.append(dog)
    }
    
    func favNumbersOfDogs() -> Int {
        return self.favDogArray.count
    }
    
    
        
}




