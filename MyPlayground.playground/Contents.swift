//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func randomPerson() -> String {
    let randomNumber = arc4random_uniform(2)
    
    if randomNumber == 0 {
        return "Steve Jobs"
    } else {
        return "Bill Gates"
    }
}

randomPerson()

func randomNumberFromZeroTo(number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

randomNumberFromZeroTo(5)

//let billGatesFact = ["Bill Gates":
//    ["He aimed to become a millionaire by the age of 30. However, he became a billionaire at 31.",
//        "He scored 1590 (out of 1600) on his SATs.",
//        "His foundation spends more on global health each year than the United Nation's World Health Organization.",
//        "The private school he attended as a child was one of the only schools in the US with a computer. The first program he ever used was a tic-tac-toe game.",
//        "In 1994, he was asked by a TV interviewer if he could jump over a chair from a standing position. He promptly took the challenge and leapt over the chair like a boss."
//    ]
//]
//
//let steveJobsFact = ["Steve Jobs":
//    ["He took a calligraphy course, which he says was instrumental in the future company products' attention to typography and font.",
//        "Shortly after being shooed out of his company, he applied to fly on the Space Shuttle as a civilian astronaut (he was rejected) and even considered starting a computer company in the Soviet Union.",
//        "He actually served as a mentor for Google founders Sergey Brin and Larry Page, even sharing some of his advisers with the Google duo.",
//        "He was a pescetarian, meaning he ate no meat except for fish."] ]


let billGatesFacts =     ["He aimed to become a millionaire by the age of 30. However, he became a billionaire at 31.",
                          "He scored 1590 (out of 1600) on his SATs.",
                          "His foundation spends more on global health each year than the United Nation's World Health Organization.",
                          "The private school he attended as a child was one of the only schools in the US with a computer. The first program he ever used was a tic-tac-toe game.",
                          "In 1994, he was asked by a TV interviewer if he could jump over a chair from a standing position. He promptly took the challenge and leapt over the chair like a boss."
]

let steveJobsFacts =     ["He took a calligraphy course, which he says was instrumental in the future company products' attention to typography and font.",
                          "Shortly after being shooed out of his company, he applied to fly on the Space Shuttle as a civilian astronaut (he was rejected) and even considered starting a computer company in the Soviet Union.",
                          "He actually served as a mentor for Google founders Sergey Brin and Larry Page, even sharing some of his advisers with the Google duo.",
                          "He was a pescetarian, meaning he ate no meat except for fish."]

var randomFact = ["Bill Gates": billGatesFacts,
                  "Steve Jobs": steveJobsFacts]


var fact : String = ""
var person = randomPerson()

if person == "Steve Jobs" {
    if let facts = randomFact["Steve Jobs"] {
        fact = (facts[randomNumberFromZeroTo(5)])
    }
} else {
    if let facts = randomFact["Bill Gates"] {
        fact = (facts[randomNumberFromZeroTo(4)])
    }
}

// I'm trying to access Dictionary -> Dictionary

print(fact)

//print(fact(randomNumberFromZeroTo(5)))


//
//var randomFact : [String: [String]] = ["":[""]]






//print(randomFact["\(randomPerson())": "\(steveJobsFact[randomNumberFromZeroTo(5)])"])


