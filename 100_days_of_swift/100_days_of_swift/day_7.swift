//
// Created by Arshan Khanifar on 2020-06-26.
// Copyright (c) 2020 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

// passing parameters to closures
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

//travel {
//    print("hello you passed \($0)")
//}

// returning from closures

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//travel2 {
//    return "helooo you passed \($0)"
//}

func incrementerFactory() -> () -> Void {
    var i = 0
    return {
        i += 1
        print("counter \(i)")
    }
}

// each call to incrementer factory gives you a new instance to i:
func newInstances() {
    let incrementer = incrementerFactory()
    for i in 0 ..< 5 {
        incrementer()
    }

    let incrementer2 = incrementerFactory()
    for i in 0 ..< 5 {
        incrementer2()
    }
    // if you look at output you'll see the counter resets to 1
}

