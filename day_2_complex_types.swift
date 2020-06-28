// arrays
print("ARRAYS")
var a = ["hey", "my", "name", "is", "arshan"] 
print(a)
a[1] = "arshan"
print(a)

print("SETS")
let colours = Set(["blue", "green", "yellow"])
print(colours)

let colours2 = Set(["blue", "blue", "green", "yellow"])
print(colours2)

print("TUPLES")
let person_1 = (name: "arshan", age: 23)
print("accessing via 0: " + person_1.0)
print("accessing via keyname: \(person_1.age)")

// note that the keys here are not strings, or ints
//let person_2 = (10: "arshan")
let person_2 = (10, "arshan")
print(person_2)
print(person_2.0)
print(person_2.1)

print("DICTIONARIES")
let heights = [
    "Arshan": 1.75,
    "Taylor Swift": 1.73
]
print("heights at 0: \(heights["Arshan", default: 1.8])")

print("EMPTY COLLECTIONS")
// let empt_arr = [] can't do this, requires explicit type
let empt_arr = Array<String>() // or
let empt_arr_1 = [String]()
let empt_set = Set<String>()
let empt_dict = Dictionary<String, String>() // or
let empt_dict_1 = [String: String]()

print("ENUMERATIONS")
enum Result {
    case success(at: String)
    case failure
}

let result_3 = Result.success(at: "chess")
print("result_3: \(result_3)")
if result_3 == Result.success(at: "chess") {
    print("they equal")
} else {
    print("they not equal")
}

