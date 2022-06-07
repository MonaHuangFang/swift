import UIKit

//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//
//func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
//    return backwards ? stepBackward : stepForward
//}

//func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
//    func stepForward(_ input: Int) -> Int {
//        return input + 1
//    }
//    func stepBackward(_ input: Int) -> Int {
//        return input - 1
//    }
//    return backwards ? stepBackward : stepForward
//}
//
//var currentValue = 3
//let moveNearerToZero = chooseStepFunction(backwards: currentValue > 0)
//print("Counting to zero:")
//
//while currentValue != 0 {
//    print("\(currentValue)...")
//    currentValue = moveNearerToZero(currentValue)
//}
//
//print("zero!")


//let names = ["zhangsan", "lisi", "wangwu", "zhaoliu"]
//func backword(_ s1: String, _ s2: String) -> Bool {
//    return s1 > s2
//}
//
//var reversedNames = names.sorted(by: >)
//print(reversedNames)

//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runnungTotal = 0
//    func incrementer() -> Int {
//        runnungTotal += amount
//        return runnungTotal
//    }
//    return incrementer
//}
//
//let incrementByTen = makeIncrementer(forIncrement: 10)
//incrementByTen()
//incrementByTen()
//incrementByTen()

//var completionHandlers: [() -> Void] = []
//func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
//    completionHandlers.append(completionHandler)
//}
//
//func someFunctionWithNonescapingClosure(closure: () -> Void) {
//    closure()
//}
//
//class SomeClass {
//    var x = 10
//    func doSomething() {
//        someFunctionWithEscapingClosure {
//            self.x = 100
//        }
//        someFunctionWithNonescapingClosure {
//            x = 200
//        }
//    }
//}
//
//let instance = SomeClass()
//instance.doSomething()
//print(instance.x)
//
//completionHandlers.first?()
//print(instance.x)

//public func assert(_ condition: @autoclosure () -> Bool, _ message: @autoclosure () -> String = String(), file: StaticString = #file, line: UInt = #line) {
//    if !condition() {
//        print(message())
//    }
//}
//
//let numer = 3
//assert(numer > 3, "number 不大于3")

//var customersInLine = ["chris", "Alex", "Ewa", "Barry", "Daniella"]
//print(customersInLine.count)

//let customerProvider = { customersInLine.remove(at: 0) }
//print(customersInLine.count)
//
//print("Now serving \(customerProvider())!")
//print(customersInLine.count)

//func serve(customer customerProvider: () -> String) {
//    print("Now serving \(customerProvider())!")
//}
//
//serve(customer: { customersInLine.remove(at: 0) })


//func serve(customer customerProvider: @autoclosure () -> String) {
//    print("Now serving \(customerProvider())!")
//}
//
//serve(customer: customersInLine.remove(at: 0))

//var customerProviders: [() -> String] = []
//func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String){
//    customerProviders.append(customerProvider)
//}
//
//collectCustomerProviders(customersInLine.remove(at: 0))
//collectCustomerProviders(customersInLine.remove(at: 0))
//
//print("Collected \(customersInLine.count) closures")
//
//for customerProvider in customerProviders {
//    print("Now serving \(customerProvider())!")
//}

//let results = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//let allResults = results.flatMap { $0.map { $0 * 10 } }
//print(allResults)
//let passMarks = results.flatMap{ $0.filter{ $0 > 5 } }
//print(passMarks)

//let keys: [String?] = ["Zhangsan", nil, "Lisi", nil, "Wangwu"]
//let validNames = keys.compactMap{ $0 }
//print(validNames)
//let counts = keys.compactMap{ $0?.count }
//print(counts)

//let NON_Words: Set = ["the", "and", "of", "to", "a", "i", "it", "in", "or", "is", "as", "so", "but", "be"]
//
//func wordFreq(words: String) -> [String: Int] {
//    var wordDict: [String: Int] = [:]
//    let wordList = words.split(separator: " ")
//    for word in wordList {
//        let lowerCaseWord = word.lowercased()
//        if !NON_Words.contains(lowerCaseWord) {
//            if let count = wordDict[lowerCaseWord] {
//                wordDict[lowerCaseWord] = count + 1
//            } else {
//                wordDict[lowerCaseWord] = 1
//            }
//        }
//    }
//    return wordDict
//}
//
//func wordFreq2(words: String) -> [String: Int] {
//    var wordDict: [String: Int] = [:]
//    let wordList = words.split(separator: " ")
//    wordList.map { $0.lowercased() }
//    .filter{ !NON_Words.contains($0) }
//    .forEach { word in
//        wordDict[word] = (wordDict[word] ?? 0) + 1
//    }
//    return wordDict
//}
//
//let words = """
//There are moments in life when you miss someone so much that you just want to pick them from your dreams and hug them for real Dream what you want to dream go where you want to go be what you want to be because you have only one life and one chance to do all the things you want yo do
//"""
//
//print(wordFreq2(words: words))


let employee = ["neal", "s", "stu", "j", "rich", "bob", "aiden", "j", "ethan", "liam", "mason", "noah", "lucas", "jacob", "jack"]
//
//func cleanNames(names: Array<String>) -> String {
//    var cleanedNames = ""
//
//    for name in names {
//        if name.count > 1 {
//            cleanedNames += name.capitalized + ","
//        }
//    }
//    cleanedNames.remove(at: cleanedNames.index(before: cleanedNames.endIndex))
//    return cleanedNames
//}
//
//print(cleanNames(names: employee))

let cleanedNames = employee.filter { $0.count > 1 }
    .map { $0.capitalized }
    .joined(separator: ",")
print(cleanedNames)
