//
// Created by Arshan Khanifar on 2020-06-27.
// Copyright (c) 2020 Arshan Khanifar. All rights reserved.
//

import Foundation

class EngStudent {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class MidsunStudent: EngStudent {
    var occupancy: String
    init(occupancy: String) {
        self.occupancy = occupancy
        super.init(name: "shijing", age: 21)
    }
}

struct HelloStruct {
    var foo: String
    init(foo: String) {
        self.foo = foo
    }
}


