//
// Created by Arshan Khanifar on 2020-06-27.
// Copyright (c) 2020 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

// optional
var age: Int? = nil

// unwrapping optionals
var name: String? = nil

func optional_string_returner(number: Int) -> String? {
    if number.isMultiple(of: 2) {
        return "is even"
    }
    return nil
}

func optional_string_returner_usage() {
    if let unwrapped = optional_string_returner(number: 2) {
        print("variable got unwrapped \(unwrapped)")
    } else {
        print("it didn't")
    }
}

func guard_let_usage() {
    guard let unwrapped = optional_string_returner(number: 2) else {
        return
    }
    print(unwrapped)
}

func greet(_ name: String?) {
    guard let their_name = name else {
        print("hello, user")
        return;
    }
    print("hello, \(their_name)")
}

func force_unwrap(name: String?) {
    let actual_name = name!
}

func implicitly_unwrapped(crash: Bool) {
    var a: Int! = crash ? nil : 1234
    // if you try to access it it'll have a problem
    var b: Int = a // if a is nil then this'll crash otherwise it's fine
}

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

// it's a fancy word for providing a default value.
func nil_coalescing(id: Int) {
    print(username(for: id) ?? "no username")
}

func test_nil_coalescing(id: Int) {
    nil_coalescing(id: 1)
    nil_coalescing(id: 2)
}

func optional_chaining() {
    let names = ["John", "Paul", "George", "Ringo"]
    let beatle = names.first?.uppercased()
    let empty_names = [String]()
    let first_person = empty_names.first?.uppercased() ?? "no person"
    print(first_person)
}

enum PassError : Error {
    case obvious
}

func check_password(password: String) throws -> Bool {
    if password == "12345" {
        throw PassError.obvious
    }
    return true
}


func no_optional_try() {
    // previously we'd do something like this if we had a function that threw
    let valid: Bool
    do {
        valid = try check_password(password: "12345")
    } catch {
        print("password is too obvious")
        valid = false
    }
    print("password validity: \(valid)")
}

func optional_try() {
    // now we can do something like this:
    if let valid = try? check_password(password: "12345") {
        print("password is valid: \(valid)")
    } else {
        print("whoops!")
    }
}

func optional_try_failing() {
    // this'll crash if error is thrown
    let valid = try! checkPassword(this: "12345")
}


class ActualPerson {
    let name: String
    init?(name: String) {
        if name.contains("1") {
            return nil
        }
        self.name = name
    }
}

func failable_initializers() {
    var a = ActualPerson(name: "Arshan123")
    print(a)
}

class Food {

}

class Sushi: Food {
    func num_fish() -> Int {
        return 12
    }
}

func type_casting() {
    var foods = [Food(), Sushi(), Sushi(), Sushi(), Food(), Sushi()]
    for i in 0 ..< foods.count {
        if let food = foods[i] as? Sushi {
            print("\(i): \(food.num_fish())")
        }
    }
}

func force_downcasting() {
    var foods = [Food(), Sushi(), Sushi(), Sushi(), Food(), Sushi()]
    var food = foods[0] as! Sushi
}




