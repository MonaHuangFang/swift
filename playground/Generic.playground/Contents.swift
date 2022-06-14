import UIKit
import Foundation

//func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
//    let temp = a
//    a = b
//    b = temp
//}
//
//struct Stack<Element> {
//    var items = [Element]()
//    mutating func push(_ item: Element){
//        items.append(item)
//    }
//
//    mutating func pop() -> Element {
//        return items.removeLast()
//    }
//}
//
//extension Stack {
//    var topItem: Element? {
//        return items.isEmpty ? nil : items[items.count - 1]
//    }
//}
//
//var stackOfStrings = Stack<String>()
//stackOfStrings.push("uno")
//stackOfStrings.push("dos")
//stackOfStrings.push("tres")
//stackOfStrings.push("cuatro")
//print(stackOfStrings.topItem!)
//
//func findIndex(ofString valueToFind: String, in array:[String]) -> Int? {
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}
//
////添加类型约束
//func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}

protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }

    associatedtype Iterator: IteratorProtocol where Iterator.Element == Item
    func makeIterator() -> Iterator
}

//struct IntStack: Container {
//    var items = [Int]()
//    mutating func push(_ item: Int) {
//        items.append(item)
//    }
//    mutating func pop() -> Int {
//        return items.removeLast()
//    }
//
//    typealias ItemType = Int
//
//    mutating func append(_ item: Int) {
//        self.push(item)
//    }
//
//    var count: Int {
//        return items.count
//    }
//
//    subscript(i: Int) -> Int {
//        return items[i]
//    }
//}

//struct Stack<Element>: Container {
//    var items = [Element]()
//    mutating func push(_ item: Element) {
//        items.append(item)
//    }
//    mutating func pop() -> Element {
//        return items.removeLast()
//    }
//    mutating func append(_ item: Element) {
//        self.push(item)
//    }
//    var count: Int {
//        return items.count
//    }
//    subscript(i: Int) -> Element {
//        return items[i]
//    }
//}

//protocol SuffixableContainer: Container {
//    associatedtype Suffix: SuffixableContainer where Suffix.Item == Item
//    func suffix(_ size: Int) -> Suffix
//}

//func allItemsMatch<C1: Container, C2: Container>(_ c1: C1, _ c2: C2) -> Bool where C1.Item == C2.Item, C1.Item: Equatable {
//    if c1.count != c2.count {
//        return false
//    }
//
//    for i in 0..<c1.count {
//        if c1[i] != c2[i] {
//            return false
//        }
//    }
//
//    return true
//}

//extension Stack where Element: Equatable {
//    func isTop(_ item: Element) -> Bool {
//        guard let topItem = items.last else {
//            return false
//        }
//
//        return topItem == item
//    }
//}
//
//extension Container where Item: Equatable {
//    func startsWith(_ item: Item) -> Bool {
//        return count >= 1 && self[0] == item
//    }
//}
//
//extension Container where Item == Double {
//    func average() -> Double {
//        var sum = 0.0
//        for index in 0..<count {
//            sum += self[index]
//        }
//        return sum / Double(count)
//    }
//}

extension Container {
    subscript<Indices: Sequence>(indices: Indices) -> [Item] where Indices.Iterator.Element == Int {
        var result = [Item]()
        for index in indices {
            result.append(self[index])
        }
        return result
    }
}
