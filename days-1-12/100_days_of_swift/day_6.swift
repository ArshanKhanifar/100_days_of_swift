//
// Created by Arshan Khanifar on 2020-06-25.
// Copyright (c) 2020 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

let driving = { (name: String) in
    print("I \(name) am driving")
}

let hello = { (prepend: String, _ action:(String) -> String) in
    let calling = "someString"
    print("calling your action with: \(calling)")
    let output = action(calling)
    print("\(prepend) your action outputted: \(output)")
}
