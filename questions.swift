// how do you compare enums?
enum Result {
    case success(at: String)
    case failure
}
let result = Result.success(at: "tennis")
print(result.at)

if result == Result.success(at: "tennis")  {
    print("hello")
}
