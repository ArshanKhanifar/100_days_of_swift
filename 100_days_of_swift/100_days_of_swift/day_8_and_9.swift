import Foundation

struct Sport {
    // stored properties
    var name: String
    var isOlympicSport: Bool
    // computed properties
    var olympicStatus: String {
        if isOlympicSport {
            return "yes"
        } else {
            return "no"
        }
    }
    // property watchers
    var amount: Int {
        didSet {
            print("this amount was just set to \(amount)")
        }
    }
    // methods: you declare them just like funcs
    func sayHiAndReturnNumber() -> Int {
        print("hiii")
        return 3
    }
}

struct Dog {
    func bork() {
        print("Bork")
    }
}

// mutating
struct Person {
    var name: String
    mutating func change_name(new_name: String) {
        name = new_name
    }
}

func let_instances_still_cant_be_mutated() {
    var arshan = Person(name: "Arshan")
    print(arshan.name)
    arshan.change_name(new_name: "Arshia")
    print(arshan.name)
}

// properties and methods of strings
func string_properties() {
    let somestr = "Hello, how's it going"
    print(somestr.count)
    print(somestr.contains("how's"))
    print(somestr.hasPrefix("Hello"))
    print(somestr.sorted())
}

// class with initializers
struct Doggo {
    let name: String
    init() {
        name = "khello"
    }
}

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

// lazy properties
struct Peoples {
    lazy var hi = FamilyTree()
    init() {
        print("peoples was created!")
    }
}

struct Student {
    static var classSize = 0
    init() {
        Student.classSize += 1
    }
}

struct Car {
    private var model: String
    init(car_model: String) {
        model = car_model
    }

    func get_description() -> String {
        return "This car is a \(model)"
    }
}


