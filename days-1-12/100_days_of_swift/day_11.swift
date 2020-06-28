//
// Created by Arshan Khanifar on 2020-06-27.
// Copyright (c) 2020 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

protocol Identifiable {
    var id: String { get }
}

struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable) {
    print(thing.id)
}

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

// protocols can inherit (handy)
protocol Employee: Payable, NeedsTraining, HasVacation { }

// extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

// protocols can also be extended

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}