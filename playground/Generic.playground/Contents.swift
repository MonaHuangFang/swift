import UIKit
import Foundation

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

extension Stack {
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
print(stackOfStrings.topItem!)

