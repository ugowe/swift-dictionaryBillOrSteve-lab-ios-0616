//
//  ViewController.swift
//  BillOrSteve
//
//  Created by James Campagno on 6/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var factLabel: UILabel!
    @IBOutlet var scoreCounter: UILabel!
    @IBOutlet var steveLabel: UILabel!
    @IBOutlet var billLabel: UILabel!
    @IBOutlet var steveButton: UIButton!
    @IBOutlet var billButton: UIButton!
    
    var randomFact : [String: [String]] = ["":[""]]
    var steveJobsFacts : [String] = [""]
    var billGatesFacts : [String] = [""]
    var currentFact: (String?, String?)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        createFacts()
    }
    
    func randomNumberFromZeroTo(number: Int) -> Int {
        return Int(arc4random_uniform(UInt32(number)))
    }
    
    func randomPerson() -> String {
        let randomNumber = arc4random_uniform(2)
        
        if randomNumber == 0 {
            return "Steve Jobs"
        } else {
            return "Bill Gates"
        }
    }
    
    @IBAction func steveTapped(sender: AnyObject) {
        if currentFact.0 == "Steve Jobs" {
            let number = ((Int(scoreCounter.text!))! + 1)
            scoreCounter.text = "\(number)"
        }
        
        getRandomFact()
        showFact()
    }
    
    @IBAction func billTapped(sender: AnyObject) {
        if currentFact.0 == "Bill Gates" {
            let number = ((Int(scoreCounter.text!))! + 1)
            scoreCounter.text = "\(number)"
        }
        
        getRandomFact()
        showFact()
    }
    
    func createFacts() {
        billGatesFacts =     ["He aimed to become a millionaire by the age of 30. However, he became a billionaire at 31.",
                              "He scored 1590 (out of 1600) on his SATs.",
                              "His foundation spends more on global health each year than the United Nation's World Health Organization.",
                              "The private school he attended as a child was one of the only schools in the US with a computer. The first program he ever used was a tic-tac-toe game.",
                              "In 1994, he was asked by a TV interviewer if he could jump over a chair from a standing position. He promptly took the challenge and leapt over the chair like a boss."
        ]
        
        steveJobsFacts =     ["He took a calligraphy course, which he says was instrumental in the future company products' attention to typography and font.",
                              "Shortly after being shooed out of his company, he applied to fly on the Space Shuttle as a civilian astronaut (he was rejected) and even considered starting a computer company in the Soviet Union.",
                              "He actually served as a mentor for Google founders Sergey Brin and Larry Page, even sharing some of his advisers with the Google duo.",
                              "He was a pescetarian, meaning he ate no meat except for fish."]
        
        randomFact = ["Bill Gates": billGatesFacts,
                      "Steve Jobs": steveJobsFacts]
        
    }
    
    func getRandomFact() -> (String?, String?) {
        let person = randomPerson()
        var fact : String = ""
        
        if person == "Steve Jobs" {
            if let facts = randomFact["Steve Jobs"] {
                fact = (facts[randomNumberFromZeroTo(4)])
            }
        } else {
            if let facts = randomFact["Bill Gates"] {
                fact = (facts[randomNumberFromZeroTo(3)])
            }
        }
        
        return (person, fact)
        
    }
    
    func showFact() {
        
        currentFact = getRandomFact()
        factLabel.text = currentFact.1
        
        
    }
}
