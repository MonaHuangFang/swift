import UIKit

//var greeting = "Hello, playground"

//var array = [1, 2, 3, 4]
//print(array)
//array = []
//print(array)

//let fiveZs = Array(repeating: "Z", count: 6)
//print(fiveZs)

//let chars = Array("hello")
//print(chars)
//
//let nums = Array(1...9)
//print(nums)
//
//let persons = ["zhangsan": 13, "lisi": 14, "wangwu": 15]
//let names = Array(persons.keys)
//print(names)

//数组遍历
//let nums = Array(2...7)
//for num in nums {
//    print(num)
//}
//nums.forEach { num in
//    if num == 3 {
//        return
//    }
//    print(num)
//}

//for (index, num) in nums.enumerated() {
//    print("the index is \(index), number is \(num)")
//}

//var it = nums.makeIterator()
//while let num = it.next() {
//    print(num)
//}

//for i in nums.indices {
//    print("the index is \(i)")
//    print(nums[i])
//}

//let array: Array<Int> = [10, 20, 45, 30, 98, 101, 30, 4]
//print(array.contains(30))
//print(array.contains(where: {$0 < 4}))

//print(array.allSatisfy({$0 > 10}))
//print(array.allSatisfy({$0 > 3}))


//print(array.first)
//print(array.last)
//print(array.first(where: {$0 > 25}))
//print(array.last(where: {$0 > 25}))

//print(array.firstIndex(of: 9))
//print(array.lastIndex(of: 30))
//print(array.firstIndex(where: {$0 > 25}))
//print(array.lastIndex(where: {$0 > 25}))

//print(array.min())
//print(array.max())

//let errors = [(12, "error12"), (23, "error23"), (45, "error45")]
//print(errors.min(by: { (a, b) -> Bool in
//    a.0 < b.0
//}))
//
//print(errors.max(by: { (a, b) -> Bool in
//    a.0 < b.0
//}))

//var numbers = [Int](2...7)
//numbers.append(100)
//print(numbers)
//numbers.append(contentsOf: 200...203)
//print(numbers)

//numbers.insert(-1, at: 1)
//print(numbers)
//numbers.insert(contentsOf: 100...105, at: 1)
//print(numbers)

//let removedNum = numbers.remove(at: 1)
//print(removedNum)
//print(numbers)

//let num = numbers.removeFirst()
//print(num)
//print(numbers)

//let num = numbers.removeLast()
//print(num)
//print(numbers)

//let num = numbers.popLast()
//print(num)
//print(numbers)

//numbers.removeSubrange(1...3)
//print(numbers)

//numbers.removeAll()
//print(numbers)
//print(numbers.capacity)

//numbers.removeAll(keepingCapacity: true)
//print(numbers)
//print(numbers.capacity)

//numbers.removeFirst(2)
//print(numbers)

//var numbers = [2, 10, 15, 25, 100, 46, 99]
//var slice = numbers.dropFirst(3)
//var slice = numbers.drop(while: {$0 < 50})
//print(slice)


//var slice = numbers.prefix(4)
//var slice = numbers.prefix(upTo: 4)
//var slice = numbers.prefix(through: 4)
//var slice = numbers.prefix(while: { $0 < 25})
//print(slice)

//var slice = numbers.suffix(3)
//var slice = numbers.suffix(from: 5)
//print(slice)

//var slice = numbers[...]
//numbers.append(333)
//print(slice)
//slice.append(555)
//print(numbers)
//print(slice)
//
//numbers = Array(slice)


//var array = [Int](1...8)
//array.shuffle()
//let array2 = array.shuffled()
//print(array)
//print(array2)

//array.reverse()
//let array2 = array.reversed()
//print(array)
//print(array2)

//var numbers = [10, 2, 25, 30, 46, 57, 101, 30, 70]
//let index = numbers.partition(by: { $0 > 30 })
//print(index)
//print(numbers)
//let p1 = numbers[..<index]
//let p2 = numbers[index...]
//print(p1)
//print(p2)

//numbers.sort()
//print(numbers)
//let numbers2 = numbers.sorted()
//print(numbers2)

//numbers.swapAt(numbers.startIndex, numbers.endIndex - 1)
//print(numbers)

//let array = ["hello", "world"]
//print(array.joined())
//print(array.joined(separator: ", "))

//let rangs = [0...3, 5...7, 15...17]
//for i in rangs.joined() {
//    print(i)
//}

//let nestedArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//let result = nestedArray.joined(separator: [-1, -2])
//print(Array(result))

//struct Stack<T> {
//    private var elements = [T]()
//    var count: Int {
//        return elements.count
//    }
//
//    var isEmpty: Bool {
//        return elements.isEmpty
//    }
//
//    var peek: T? {
//        return elements.last
//    }
//
//    mutating func push(_ element: T) {
//        elements.append(element)
//    }
//
//    mutating func pop() -> T? {
//        return elements.popLast()
//    }
//}
//
//var stack = Stack<Int>()
//stack.push(1)
//stack.push(3)
//stack.push(8)
//print(stack.pop() ?? 0)
//print(stack.count)

//struct Queue<T> : Sequence {
//    private var elements = [T]()
//
//    var count: Int {
//        return elements.count
//    }
//
//    var isEmpty: Bool {
//        return elements.isEmpty
//    }
//
//    var peek: T? {
//        return elements.first
//    }
//
//    mutating func enqueue(_ element: T) {
//        elements.append(element)
//    }
//
//    mutating func dequeue() -> T? {
//        return isEmpty ? nil : elements.removeFirst()
//    }
//
//    func makeIterator() -> IndexingIterator<Array<T>> {
//        return elements.makeIterator()
//    }
//}
//
//var queue = Queue<Int>()
//queue.enqueue(1)
//queue.enqueue(3)
//queue.enqueue(8)
//print(queue.dequeue() ?? 0)
//print(queue.count)

//for element in queue.makeIterator() {
//    print(element)
//}

//queue.forEach { element in
//    print(element)
//}

//for (index, element) in queue.enumerated() {
//    print("the index is \(index), the element is \(element)")
//}

//var it = queue.makeIterator()
//while let num = it.next() {
//    print(num)
//}

//创建Set
//var letters = Set<Character>()
//letters.insert("c")
//print(letters)
//
//var course: Set<String> = ["Math", "English", "History"]
//course.insert("History")
//print(course)

//Set的哈希值 - 存储在Set里的类型必须遵循哈希协议
//struct Person {
//    var name: String
//    var age:Int
//}
//
//extension Person: Hashable {
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
////        hasher.combine(age)
//    }
//}
//
//extension Person: Equatable {
//    static func == (lhs: Person, rhs: Person) -> Bool {
//        return lhs.name == rhs.name
//    }
//}

//var personSet: Set = [Person(name: "zhangsan", age: 28)]
//personSet.insert(Person(name: "lisi", age: 29))
//print(personSet)
//print("-------")
//personSet.update(with: Person(name: "zhangsan", age: 38))
//personSet.update(with: Person(name: "wangwu", age: 18))
//print(personSet)
//print("-------")
//print(personSet.filter{ $0.age > 20 })
//personSet.remove(Person(name: "zhangsan", age: 38))
//personSet.removeFirst()
//print(personSet)

//Set遍历
//let courses: Set = ["Math", "English", "History"]
//for course in courses {
//    print(course)
//}
//print("------")
//
//for course in courses.sorted() {
//    print(course)
//}

//Set的访问
//let set: Set<Character> = ["A", "B", "C"]
//print(set.count)
//print(set.isEmpty)

//Set基本操作
//let set: Set<Character> = ["A", "B", "C"]
//let set2: Set<Character> = ["B", "E", "F", "G"]
//print(set.intersection(set2))
//print(set.union(set2))
//print(set.symmetricDifference(set2))
//print(set.subtracting(set2))

//Set的判断
//let smallSet: Set = [1, 2, 3]
//let bigSet: Set = [1, 2, 3, 4]
//print(smallSet.isSubset(of: bigSet))
//print(bigSet.isSuperset(of: smallSet))
//print(smallSet.isStrictSubset(of: bigSet))
//print(bigSet.isStrictSuperset(of: smallSet))
//print(smallSet.isDisjoint(with: bigSet))

//func getSubsetsOfSet<T>(set: Set<T>) -> Array<Set<T>> {
//    let count = 1 << set.count
//    let elements = Array(set)
//    var subSets = Array<Set<T>>()
//    for i in 0..<count {
//        var subSet = Set<T>()
//        for j in 0...elements.count {
//            if ((i >> j) & 1) == 1 {
//                subSet.insert(elements[j])
//            }
//        }
//        subSets.append(subSet)
//    }
//    return subSets
//}
//
//func getSubsetsOfSet2<T>(set: Set<T>) -> Array<Set<T>> {
//    let elements = Array(set)
//    return getSubsetsOfSet3(elements: elements, index: elements.count - 1, count: elements.count)
//}
//
//func getSubsetsOfSet3<T>(elements: Array<T>, index: Int, count: Int) -> Array<Set<T>> {
//    var subSets = Array<Set<T>>()
//    if index == 0 {
//        subSets.append(Set<T>())
//        var subSet = Set<T>()
//        subSet.insert(elements[0])
//        subSets.append(subSet)
//        return subSets
//    }
//    subSets = getSubsetsOfSet3(elements: elements, index: index - 1, count: count)
//    for subSet in subSets {
//        var subSetWithCurrent =  subSet
//        subSetWithCurrent.insert(elements[index])
//        subSets.append(subSetWithCurrent)
//    }
//    return subSets
//}
//
//func getSubsetsOfSet4<T>(set: Set<T>) -> Array<Set<T>> {
//    let elements = Array(set)
//    return getSubsetsOfSet5(elements: elements)
//}
//
//func getSubsetsOfSet5<T>(elements: Array<T>) -> Array<Set<T>> {
//    var subSets = Array<Set<T>>()
//    if elements.count == 1 {
//        subSets.append(Set<T>())
//        var subSet = Set<T>()
//        subSet.insert(elements[0])
//        subSets.append(subSet)
//        return subSets
//    }
//    var array = elements
//    let element = array.removeLast()
//    subSets = getSubsetsOfSet5(elements: array)
//
//    for subSet in subSets {
//        var subSetWithCurrent =  subSet
//        subSetWithCurrent.insert(element)
//        subSets.append(subSetWithCurrent)
//    }
//
//    return subSets
//}
//
//let set: Set = [1, 2, 3]
//print(getSubsetsOfSet4(set: set))


//let dict = ["zhangsan": 18, "lisi": 19, "wangwu": 20]

//for (key, value) in dict {
//    print("name \(key), age \(value)")
//}

//for key in dict.keys.sorted() {
//    print("name \(key), age \(dict[key] ?? 0)")
//}

//var dictionary = ["a": 1, "b": 2]
//dictionary.merge(["a": 3, "c": 4]) { current, _ in
//    current
//}
//print(dictionary)
//dictionary.merge(["a": 5, "d": 6]) { _, new in
//    new
//}
//print(dictionary)


//let recordTimes: KeyValuePairs = ["Florence Griffith-Joyner": 10.49, "Evelyn Ashford": 10.76, "Evelyn Ashford": 10.79, "Marlies Gohr": 10.81]
//print(recordTimes.first)
