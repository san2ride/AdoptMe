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
        
        let Athena = Dog(name: "Athena", breed: "Chihuahua", imageName: "d1Athena", age: "Adult", size: "Small", gender: "Female", profile: "Meet Athena! Athena is a 5-year-old Chihuahua. This pint-sized girl is full of personality and will make a great companion! She gets along well with other small, non-dominant dogs… she especially likes her little friend, Zeus. Athena loves being carried around in the arms of her human companion, like most small dogs do! 🙂 Come meet and fall in love with Athena today!")
        self.addDog(Athena)
        
        let Audi = Dog(name: "Audi", breed: "Crossbreed", imageName: "d2Audi", age: "Young Adult", size: "Medium", gender: "Female", profile: "Audi is an 8-month-old Lab mix. She is mostly black with some white accents, and her coat is a bit wiry. She is all puppy all the the time. She will be a great hiking or running buddy and would love space to live and a family to adore. Audi won’t last long so come and adopt her today!")
        self.addDog(Audi)
        
        let Basil = Dog(name: "Basil", breed: "Crossbreed", imageName: "d3Basil", age: "Adult", size: "Large", gender: "Male", profile: "Basil is a sweet 6 year old male Bassett Hound mix. He is a happy go lucky dog! Basil knows a few obedience commands (sit & down) Further obedience training wouldn’t hurt. He is very eager to learn and very eager to please. He gets along well with other similar sized dogs but is not too found of the felines. Basil enjoys going to leisurely walks, exploring the outdoors, playing with toys and hanging out with his favorite humans. Basil will make a great companion for any family!")
        self.addDog(Basil)
        
        let Beaufort = Dog(name: "Beaufort", breed: "Hound", imageName: "d4Beaufort", age: "Adult", size: "Large", gender: "Male", profile: "Beaufort is a beautiful 6 year old hound. He is a loving little man. He has lived with other dogs before and with a proper introduction he would love a friend. He acts as if he has never seen a cat before and could possibly live with a cat as well. Meet him today!")
        self.addDog(Beaufort)
        
        let Biroldo = Dog(name: "Biroldo", breed: "Crossbreed", imageName: "d5Biroldo", age: "Adult", size: "Small", gender: "Male", profile: "Biroldo is a very sweet Dachhund mix. He is about 4 years of age and very out going! He is bonded with his brother Cotechino and needs to be in a home that will take both of them together. He is good with other small dogs and cats with a proper introduction.")
        self.addDog(Biroldo)
        
        let Calvin = Dog(name: "Calvin", breed: "Crossbreed", imageName: "d6Calvin", age: "Senior", size: "Medium", gender: "Male", profile: "Calvin is a friendly little Jack Russel mix. He is approximately 7 years old. He likes other small dogs when introduced properly, but is a bit nervous around cats and prefers to avoid them, along with large dogs. He walks well on a leash and has no problem with stairs. Meet him today!")
        self.addDog(Calvin)
        
        let Caspian = Dog(name: "Caspian", breed: "Pit Bull Terrier", imageName: "d7Caspian", age: "Young", size: "Large", gender: "Male", profile: "Caspian is a handsome and oh so nice Shepherd/Pit Bull mix. He is about a year and a half old and is ready for a family to call his own. He would do great with basic obedience training and lots of activity with his new family. He would make an awesome hiking buddy and will be a constant companion. Make him a part of your family today!")
        self.addDog(Caspian)
        
        let Cher = Dog(name: "Cher", breed: "Crossbreed", imageName: "d8Cher", age: "Adult", size: "Medium", gender: "Female", profile: "Sorry, no description available. ")
        self.addDog(Cher)
        
        let Cora = Dog(name: "Cora", breed: "Pit Bull Terrier", imageName: "d9Cora", age: "Adult", size: "Large", gender: "Female", profile: "Cora is a 4 1/2 year old female pit bull terrier. This cute girl knows all her basic commands (sit, stay, come, heel) and is house trained and crate trained. Cora would do best in an active household. She loves going for walks and exploring the outdoors. She would need to be the only animal in the house, she does not get along with other dogs or cats. Cora has a lot of love to give and would love a family to call her own!")
        self.addDog(Cora)
        
        let Cotechino = Dog(name: "Cotechino", breed: "Crossbreed", imageName: "d10Cotechino", age: "Senior", size: "Small", gender: "Male", profile: "Cotechino is a fun loving 10 year old min pin mix. He is part of a bonded pair with his friend Biroldo. He helps his one eyed friend get around and will panick a bit if they are separated. He needs to be adopted with his friend. He has no problems with stairs and loves going on leash! Adopt today!")
        self.addDog(Cotechino)
        
        let Daisy = Dog(name: "Daisy", breed: "Pit Bull Terrier", imageName: "d11Daisy", age: "Young", size: "Medium", gender: "Female", profile: "Daisy is a very energetic year old female Pitbull mix. She can be in a home with other dogs, but needs a proper introduction. She can be shy at first but once she gets to know you she likes to think she is a lap dog. She needs lots of daily exercise and stimulation. She needs an owner who can set clear boundaries. She can be with kids but might knock small children down out of excitement.")
        self.addDog(Daisy)
        
        let Flick = Dog(name: "Flick", breed: "Pit Bull Terrier", imageName: "d12Flick", age: "Adult", size: "Large", gender: "Male", profile: "Flick is a loving and happy 7 year old pit bull mix. He ended up in the shelter when his family was deployed for two years for military service. He likes all people but would do best in a home with smaller or medium sized dogs. He loves all people and would make a great hiking buddy and has a lot of energy so an active person or family is high on his wish list. Give this boy the home he deserves and adopt him now.")
        self.addDog(Flick)
        
        let Froggers = Dog(name: "Froggers", breed: "Boston Terrier", imageName: "d13Froggers", age: "Senior", size: "Medium", gender: "Male", profile: "Meet Froggers! This Boston Terrier is looking for a home with his best buddy Binkers! They are here after living together with their owner who’s new wife didn’t want them. Froggers is a little perfect gentleman who has been described as a gem. He is so cute and will make you smile with love. Adopt these boys today.")
        self.addDog(Froggers)
        
        let Hendrick = Dog(name: "Hendrick", breed: "Crossbreed", imageName: "d14Hendrick", age: "Senior", size: "Large", gender: "Male", profile: "Hendrick is a sweet 10 year old male border collie. He is very mellow, and gets along with everyone.")
        self.addDog(Hendrick)
        
        let Jude = Dog(name: "Jude", breed: "Crossbreed", imageName: "d15Jude", age: "Senior", size: "Medium", gender: "Male", profile: "Hey, Jude! This handsome fellow is an energetic and athletic 7-year-old Jack Russell/Kelpie mix. He is very intelligent and knows all of his basic commands (and then some!). Jude needs a home with an active family who can provide him with adequate exercise for both his body and mind. He definitely needs a big back yard where he can run and play, too! He would do best in a home without young children (teens and up would be best). Jude loves to be outdoors — he’ll gladly accompany you when you go swimming, mountain biking, hiking, or just for a jog around the block. Jude is a very loyal, attentive, and charismatic dog who is looking for a special forever family to call his own. Come meet him today!")
        self.addDog(Jude)
        
        let Kellie = Dog(name: "Kellie", breed: "Rat Terrier", imageName: "d16Kellie", age: "Adult", size: "Small", gender: "Female", profile: "Meet Kelly! She is a very beautiful 2 year old chihuahua mix with extraordinary markings! The only thing that matches her beauty is her exceptional personality! Once this girl warms up to you, she is a steady companion. Come meet Kelly at the Ranch today!")
        self.addDog(Kellie)
        
        let Kevin = Dog(name: "Kevin", breed: "Crossbreed", imageName: "d17Kevin", age: "Adult", size: "Medium", gender: "Male", profile: "Kevin is an adorable 6 year old male Cocker Spaniel mix. Kevin is a very playful and fun dog. He enjoys leisurely walks, exploring the outdoors and spending time with his favorite humans. He enjoys the company of other friendly dogs and with proper introduction could learn to share a home with a furry feline. Kevin knows some basic obedience commands but a refresher course wouldn’t hurt. He is smart and eager to please. Kevin is crate trained and house trained. This great little guy will make a wonderful addition to any family!")
        self.addDog(Kevin)
        
        let Lady = Dog(name: "Lady", breed: "Crossbreed", imageName: "d18Lady", age: "Adult", size: "Medium", gender: "Female", profile: "Lady is a silly and lovable 5-year-old Pit Bull Terrier. She is a sweet, sweet girl who loves affection and cuddling. Lady likes playing outdoors, going for walks, playing with her toys and cuddling up with her favorite human friends. Lady knows her basic obedience commands and is eager to please. She is fully house trained and crate trained. Lady would do best in a moderately active household with no cats and older children. Lady enjoys the company of other non-dominant dogs. Lady will make a wonderful addition to any family!!")
        self.addDog(Lady)
        
        let Liesl = Dog(name: "Liesl", breed: "Pit Bull Terrier", imageName: "d19Liesl", age: "Young", size: "Medium", gender: "Female", profile: "Leisel is a pit bull terrier that has had a tough start in life. She was used as a bait dog in a fighting ring. She came to us in very poor condition but we are giving lots of TLC and she is slowly on the mend. This girl has a lot of love to give and deserves the best home possible. She is only 1 year old and has many memories to make with you! Come to the rescue ranch and meet her now!")
        self.addDog(Liesl)
        
        let Lucy = Dog(name: "Lucy", breed: "Crossbreed", imageName: "d20Lucy", age: "Young", size: "Large", gender: "Female", profile: "Lucy is a very sweet 1 year old female border collie, she is good with other dogs and possibly cats. She is very out going, and preferably needs a home with a fence. Adopt her today!")
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




