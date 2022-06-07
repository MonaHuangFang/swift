import UIKit

//let maxNum = 10
//var current = 0
//
//let x = 0.0, y = 0.0, z = "123"
//
//print("x = \(x), y = \(y), z = \(z)")
//
//let a = 8
//let b: UInt8 = 240
//print("UInt8 min \(UInt8.min), UInt8 max \(UInt8.max)")
//
//let i = 1
//if i == 1 {
//    print(i)
//}
//
//typealias AudioSample = UInt8
//let sample: AudioSample = 32

//let error = (1, "没有权限")
//print(error)
//
//print(error.0)
//print(error.1)

//let error = (errorCode: 1, errorMessage: "没有权限")
//print(error.errorCode)
//print(error.errorMessage)

//var error:(errorCode: Int, errorMessage: Any) = (errorCode: 1, errorMessage: "没有权限")
//error.errorCode = 2
//print(error)
//error.errorMessage = 3
//print(error)

//元祖的分解
//let error = (1, "没有权限")
//let (errorCode, errorMessage) = error
//print(errorCode)
//print(errorMessage)

//元祖 函数的返回值
//func writeFile(content: String) -> (errorCode: Int, errorMessage: String) {
//    return (1, "没有权限")
//}
//
//let error = writeFile(content: "")
//print(error)

//let str: String? = "abc"
////判断展开
//if str != nil {
//    let count = str!.count
//    print(count)
//}

////绑定展开
//if let actualStr = str {
//    let count = actualStr.count
//    print(count)
//}

////强制展开
//let count = str!.count

////隐式展开 count也是个Optional
//let count = str?.count
//print(count)

//var str: Optional<String> = "abc"
//if let actualStr = str {
//    let count = actualStr.count
//    print(count)
//}

//if str != nil {
//    let count = str.unsafelyUnwrapped.count
//    print(count)
//}

//let emptyString = ""
//if emptyString.isEmpty {
//    print("emptyString is empty")
//}

//let numbers = """
//1\
//2\
//3
//4
//5
//"""
//print(numbers)

//// Raw String
////换行符有效
//let str = "1\n2\n3"
//print(str)

////换行符无效
//let str = #"1\n2\n3"#
//print(str)

//let str = ##"1"#"2\##n3"##
//print(str)

//let welcome = "hello"
//var welcome1 = "hello"
//
//welcome1 += " world"
//print(welcome)
//print(welcome1)
//
//for c in welcome {
//    print(c)
//}
//
//let str = #"6 * 7 = \#(6 * 7)"#
//print(str)

//var welcome = "hello"
//print(welcome[welcome.startIndex])
//print(welcome[welcome.index(before: welcome.endIndex)])
//
////插入
//welcome.insert("!", at: welcome.endIndex)
//print(welcome)
//
//welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
//print(welcome)
//
////删除
//welcome.remove(at: welcome.index(before: welcome.endIndex))
//print(welcome)
//
//let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
//welcome.removeSubrange(range)
//print(welcome)


//let welcome = "hello, world"
//let index = welcome.firstIndex(of: ",") ?? welcome.endIndex
//let subString = welcome[..<index] //Substring类型
//print(subString)
//let newString = String(subString)
//print(newString)
//
//let welcome1 = "hello"
//print(welcome == welcome1)
//print(welcome.hasPrefix("hello"))
//print(welcome.hasSuffix("world"))
//print(welcome1.hasSuffix("world"))
