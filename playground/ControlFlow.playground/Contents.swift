import UIKit

//var greeting = "Hello, playground"
//
//let dict = ["spider": 8, "ant": 6, "cat": 4]
//for (animalName, legCount) in dict {
//    print("\(animalName) has \(legCount) legs")
//}
//
//for i in stride(from: 0, through: 4, by: 5) {
//    print(i)
//}
//
//let base = 3
//let power = 5
//var result = 1
//for _ in 1...power {
//    result *= base
//}
//print(result)

//var count = 0
//
//repeat {
//    print(count)
//    count += 1
//} while count < 5

//let char : Character = "A"
//
//switch char {
//case "a", "A":
//    print("the first letter of alphabet")
//case "z":
//    print("the last letter of alphabet")
//default:
//    print("other letter")
//}

//let count = 620
//var naturalCount : String
//
////区间匹配
//switch count {
//case 0:
//    naturalCount = "none"
//case 1..<12:
//    naturalCount = "a few"
//case 12..<100:
//    naturalCount = "dozens of"
//case 100..<1000:
//    naturalCount = "hundreds of"
//default:
//    naturalCount = "many"
//}
//
//print(naturalCount)

//元组匹配&值绑定
//let somePoint = (1, 0)
//switch somePoint {
//case (0, 0):
//    print("point at origin")
//case (let x, 0):
//    print("point at x-axis, distance is \(x)")
//case (0, let y):
//    print("point at y-axis, distance is \(y)")
//case let (x, y) where x == y:
//    print("x = y")
//case (-2...2, -2...2):
//    print("point in box")
//default:
//    print("point at other place")
//}

// 复合匹配
//switch somePoint {
//case (0, 0):
//    print("point at origin")
//case (let distance, 0), (0, let distance):
//    print("point at axis, distance is \(distance)")
//default:
//    print("point at other place")
//}


//let char : Character = "a"
//
//switch char {
//case "a":
//    print("the first letter of alphabet")
//    fallthrough
//case "b":
//    print("the second letter of alphabet")
//    fallthrough
//case "z":
//    print("the last letter of alphabet")
//default:
//    print("other letter")
//}

//var number = 10
//whileLoop: while number > 0 {
//    switch number {
//    case 9:
//        print("9")
//    case 10:
//        var sum = 0
//        for index in 1...10 {
//            sum += index
//            if index == 9 {
//                print(sum)
//                break whileLoop
//            }
//        }
//    default:
//        break
//    }
//    number -= 1
//}

//let someInt: Int? = 42
//
//if case .some(let x) = someInt {
//    print(x)
//}else {
//    print("no value")
//}

//let nums: [Int?] = [nil, 1, 2, nil, 5]
//for case let x? in nums {
//    print(x)
//}

//protocol Animal {
//    var name: String { get }
//}
//
//struct Dog : Animal {
//    var name : String = "Dog"
//    var runSpeed: Int
//}
//
//struct Bird :Animal {
//    var name: String = "Bird"
//    var flightHeight: Int
//}
//
//struct Fish : Animal {
//    var name : String = "Fish"
//    var depth: Int
//}
//
//let animals : [Any] = [Dog(runSpeed: 50), Bird(flightHeight: 1000), Fish(depth: 800)]
//
//for animal in animals {
//    switch animal {
//    case let dog as Dog:
//        print("Dog runspeed: \(dog.runSpeed)")
//    case let bird as Bird:
//        print("Bird flightHeight: \(bird.flightHeight)")
//    case is Fish:
//        print("Fish can Swim")
//    default:
//        print("unknown animal")
//    }
//}

struct Teacher {
    var name: String
    var salary: Int
}

func ~= (pattern: Range<Int>, value: Teacher) -> Bool {
    return pattern.contains(value.salary)
}

let teacher = Teacher(name: "zhangsan", salary: 4980)

switch teacher {
case 0..<2000:
    print("温饱线")
case 2000..<5000:
    print("小康水平")
case 5000..<10000:
    print("活得很滋润")
default:
    print("土豪")
}
