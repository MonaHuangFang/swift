import UIKit

//var greeting = "Hello, playground"

//var a = 1
//var b = 1
//if b == a {
//    print("b equal a")
//}
//
//print(9 % 4)
//print(-9 % 4)
//print(9 % -4)


//var num1: UInt8 = 251
//var num2 = num1 &+ 20
//print(num2)

//var num1: UInt8 = 0
//var num2 = num1 &- 20
//print(num2)


//var num1: Int8 = -128
//var num2 = num1 &- 1
//print(num2)


//let a: Int? = 10
//let b = 8
//print(a ?? b)

//func getNumber() -> Int {
//    print("in getNumber")
//    return 8
//}
//let a: Int? = nil
//print(a ?? getNumber())


//func addTwoNumber(num1: Int?, num2: Int?) -> Int {
////    return num1! + num2!
////    if num1 != nil {
////        if num2 != nil {
////            return num1! + num2!
////        } else {
////            return num1!
////        }
////    } else {
////        if num2 != nil {
////            return num2!
////        }else{
////            return 0
////        }
////    }
//    // + 优先级高于 ??
//    return (num1 ?? 0) + (num2 ?? 0)
//}
//
//print(addTwoNumber(num1: nil, num2: 20))

//for i in 1...5 {
//    print(i)
//}
//
//let names = ["zhangsan", "lisi", "wangwu", "zhaoliu"]
//for name in names[..<2] {
//    print(name)
//}

//let  rang = ...5
//print(rang.contains(7))
//print(rang.contains(4))
//print(rang.contains(-1))

//var welcome = "hello,world"
//let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
//welcome.removeSubrange(range)
//print(welcome)

//let range = "a"..."z"
//for char in welcome {
//    if !range.contains(String(char)) {
//        print("\(char)不是小写字母")
//    }
//}

//let number: UInt8 = 255
//print(~number)
//print(number & 1)
//print(number | 0)
//print(number ^ 3)

//let number: Int8 = -8
//print(number << 1)
//print(number >> 1)

//1000
//1010
//
//0010
//1000
//
//1010
//0010
//
//var a = 10
//var b = 8
//a = a ^ b
//b = a ^ b
//a = a ^ b
//print(a)
//print(b)

//func countOfOnes1(num: UInt) -> UInt {
//    var temp = num
//    var count: UInt = 0
//    while temp != 0 {
//        print("countOfOnes1")
//        if temp & 1 > 0 {
//            count += 1
//        }
//        temp = temp >> 1
//    }
//    return count
//}
//
//print(countOfOnes1(num: 0x11100110))
//
//func countOfOnes2(num: UInt) -> UInt {
//    var temp = num
//    var count: UInt = 0
//
//    while temp > 0 {
//        print("countOfOnes2")
//        count += 1
//        temp = temp & (temp - 1)
//    }
//
//    return count
//}
//
//print(countOfOnes2(num: 0x101000))

//func isPowerOfTwo(num: UInt) -> Bool {
//    if num == 0 {
//        return true
//    }
//    if num == 1 {
//        return false
//    }
//    return (num & (num - 1)) == 0
//}
//
//print(isPowerOfTwo(num: 0))

//func findLostNum(nums: [UInt]) -> UInt {
//    var lostNum: UInt = 0
//    for num in nums {
//        lostNum = lostNum ^ num
//    }
//    return lostNum
//}
//
//print(findLostNum(nums: [1, 2, 3, 4, 3, 4, 1]))
//
//func findTwoLostNums(nums: [UInt]) -> (UInt, UInt) {
//    var lostNum1: UInt = 0
//    var lostNum2: UInt = 0
//
//    var temp: UInt = 0
//
//    for num in nums {
//        temp = temp ^ num
//    }
//
//    var flag: UInt = 1
//    while ((flag & temp) == 0) {
//        flag = flag << 1
//    }
//
//    for num in nums {
//        if (num & flag) == 0 {
//            lostNum1 = lostNum1 ^ num
//        } else {
//            lostNum2 = lostNum2 ^ num
//        }
//    }
//
//    return (lostNum1, lostNum2)
//}
//
//print(findTwoLostNums(nums: [1, 2, 3, 4, 5, 1, 2, 3]))


struct Vector2D: Equatable {
    var x = 0.0, y = 0.0
}

extension Vector2D {
    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
}

extension Vector2D {
    static prefix func - (vector: Vector2D) -> Vector2D {
        return Vector2D(x: -vector.x, y: -vector.y)
    }
}

extension Vector2D {
    static func += (left: inout Vector2D, right: Vector2D) {
        left = left + right
    }
}

//extension Vector2D : Equatable {
//    static func == (left: Vector2D, right: Vector2D) -> Bool {
//        return left.x == right.x && left.y == right.y
//    }
//}

prefix operator +++

extension Vector2D {
    static prefix func +++ (vector: inout Vector2D) -> Vector2D {
        vector += vector
        return vector
    }
}

//var vector1 = Vector2D(x: 3.0, y: 1.0)
//var vector2 = Vector2D(x: 2.0, y: 4.0)
//var newVector = vector1 + vector2
//print("x is \(newVector.x) , y is \(newVector.y)")
//newVector = -vector1
//print("x is \(newVector.x) , y is \(newVector.y)")
//vector2 += vector1
//print("x is \(vector2.x) , y is \(vector2.y)")
//print(newVector == vector2)
//let afterDoubling = +++newVector
//print("x is \(afterDoubling.x) , y is \(afterDoubling.y)")


infix operator +- : AdditionPrecedence

extension Vector2D {
    static func +- (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y - right.y)
    }
}

infix operator *^: MyPrecedence

precedencegroup MyPrecedence {
    associativity: left
    lowerThan: AdditionPrecedence
}

extension Vector2D {
    static func *^ (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x * right.x, y: left.y * left.y + right.y * right.y)
    }
}

let first = Vector2D(x: 1.0, y: 2.0)
let second = Vector2D(x: 3.0, y: 7.0)
let third = Vector2D(x: 2.0, y: 2.0)
let vector = first +- second *^ third
print("vector x is \(vector.x), y is \(vector.y)")
