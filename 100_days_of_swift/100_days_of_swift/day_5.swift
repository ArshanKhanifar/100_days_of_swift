//
// Created by Arshan Khanifar on 2020-06-25.
// Copyright (c) 2020 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

func day_5() {
    print("day 5")
    show_help()

}


func show_help() {
    let boogiewookgie = """
        hello
            this
                is
                    indented
        """
    print("""



          hello 
          my 
          name
          has 
          multiple
          lines
          like 
          ar

          \(boogiewookgie)
          shan



          """)
    
}

func sayHi(name: String = "Arshan") {
    print("Hello \(name)")
}

//variadic
func square(_ name: String, these numbers: Int...) {
    for number in numbers {
        print("\(name) \(number) squared is \(number * number)")

    }
}

// throwing stuff
enum PasswordError: Error {
    case obvious
}

func checkPassword(this password: String = "123456") throws{
    let pass = "1234"
    if pass != password {
        throw PasswordError.obvious
    }
}

func makeItDouble(thisGuy number: inout Int) {
    number *= 2
}




