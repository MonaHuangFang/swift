import UIKit

//enum CompassPoint : CaseIterable {
//    case north
//    case south
//    case east
//    case west
//}
//
//enum Planet {
//    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
//}
//
//let directionToHead = CompassPoint.south
//
//switch directionToHead {
//case .north:
//    print("Lots of planets have a north")
//case .south:
//    print("Watch out for penguins")
//case .east:
//    print("Where the sun rises")
//case .west:
//    print("Where the skies are blue")
//}
//
//let numberOfDirections = CompassPoint.allCases.count
//
//print("\(numberOfDirections) derections")
//
//for direction in CompassPoint.allCases {
//    print(direction)
//}

//enum Barcode {
//    case upc(Int, Int, Int, Int)
//    case qrCode(String)
//}
//
//var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//print(productBarcode)
//productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
//print(productBarcode)
//
//switch productBarcode {
//case .upc(let numberSystem, let manufacturer, let product, let check):
//    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
//case .qrCode(let productCode):
//    print("QR code: \(productCode)")
//}

//enum ASCIIControlCharacter: Character {
//    case tab = "\t"
//    case lineFeed = "\n"
//    case carriageReturn = "\r"
//}
//
//enum Planet: Int {
//    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
//}
//
//enum CompassPoint : String {
//    case north
//    case south
//    case east
//    case west
//}
//
//let possiblePlanet = Planet(rawValue: 7)
//
//let positionToFind = 11
//if let somePlanet = Planet(rawValue: positionToFind) {
//    switch somePlanet {
//    case .earth:
//        print("Mostly harmless")
//    default:
//        print("Not a safe place for humans")
//    }
//} else {
//    print("There isn't a planet at position \(positionToFind)")
//}

//indirect enum ArithmeticExpression {
//    case number(Int)
//    case addition(ArithmeticExpression, ArithmeticExpression)
//    case multiplication(ArithmeticExpression, ArithmeticExpression)
//}
//
//let five = ArithmeticExpression.number(5)
//let four = ArithmeticExpression.number(4)
//let sum = ArithmeticExpression.addition(five, four)
//let produce = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
//
//func evalute(_ expression: ArithmeticExpression) -> Int {
//    switch expression {
//    case .number(let value):
//        return value
//    case let .addition(left, right):
//        return evalute(left) + evalute(right)
//    case .multiplication(let left, let right):
//        return evalute(left) * evalute(right)
//    }
//}
//
//print(evalute(produce))

//class DataImporter {
//    var fileName = "data.txt"
//    init() {
//        print("DataImporter inits")
//    }
//}
//
//class DataManager {
//    lazy var importer = DataImporter()
//    var data = [String]()
//}
//
//let manager = DataManager()
//manager.data.append("Some data")
//manager.data.append("Some more data")
//print("manager.data.append finish")
//print(manager.importer.fileName)

//struct Point {
//    var x = 0.0, y = 0.0
//    func isToTheRightOf(x: Double) -> Bool {
//        return self.x > x
//    }
//
//    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
////        x += deltaX
////        y += deltaY
//        self = Point(x: x + deltaX, y: y + deltaY)
//    }
//}

//let somePoint = Point(x: 4.0, y: 5.0)
//if somePoint.isToTheRightOf(x: 1.0) {
//    print("This point is to the right of the line where x == 1.0")
//}

//var somePoint = Point(x: 1.0, y: 1.0)
//somePoint.moveBy(x: 2.0, y: 3.0)
//print("the point is now at (\(somePoint.x), \(somePoint.y))")

//struct Size {
//    var width = 0.0, height = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            let centerX = origin.x + (size.width / 2)
//            let centerY = origin.y + (size.height / 2)
//            return Point(x: centerX, y: centerY)
//        }
//        set {
//            origin.x = newValue.x - size.width / 2
//            origin.y = newValue.y - size.height / 2
//        }
//    }
//}

//class StepCounter {
//    var totalSteps: Int = 0 {
//        willSet {
//            print("About to set totalSteps to \(newValue)")
//        }
//        didSet {
//            if totalSteps > oldValue {
//                print("Add \(totalSteps - oldValue) steps")
//            }
//
//        }
//    }
//}
//
//let stepCounter = StepCounter()
//stepCounter.totalSteps = 200
//stepCounter.totalSteps = 360
//stepCounter.totalSteps = 896

//class SomeClass {
//    class func someTypeMethod() {
//        print("类方法")
//    }
//}
//
//SomeClass.someTypeMethod()

//struct TimesTable {
//    let multiplier: Int
//    subscript(index: Int) -> Int {
//        return multiplier * index
//    }
//}
//
//let threeTimesTable = TimesTable(multiplier: 3)
//print("six times three is \(threeTimesTable[6])")

//struct Matrix {
//    let rows: Int, columns: Int
//    var grid: [Double]
//    init(rows: Int, columns: Int) {
//        self.rows = rows
//        self.columns = columns
//        grid = Array(repeating: 0.0, count: rows * columns)
//    }
//    func indexIsValid(row: Int, column: Int) -> Bool {
//        return row >= 0 && row < rows && column >= 0 && column < columns
//    }
//    subscript(row: Int, column: Int) -> Double {
//        get {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            return grid[(row * columns) + column]
//        }
//        set {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            grid[(row * columns) + column] = newValue
//        }
//    }
//}
//
//var matrix = Matrix(rows: 2, columns: 2)
//matrix[0, 1] = 1.5
//matrix[1, 0] = 3.2

//enum Planet: Int {
//    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
//    static subscript(n: Int) -> Planet {
//        return Planet(rawValue: n)!
//    }
//}

//let mars = Planet[4]
//print(mars)

//struct Fahrenheit {
//    var temperature: Double
//    init() {
//        temperature = 32.0
//    }
//}

//class Person {
//    var name: String
//    var age: Int
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    convenience init() {
//        self.init(name: "[Unnamed]", age: 0)
//    }
//}
//
//class Teacher: Person {
//    var salary: Int
//    init(name: String, age: Int, salary: Int) {
//        self.salary = salary
//        super.init(name: name, age: age)
//        self.name = name + "老师"
//    }
//
//    convenience init(name: String) {
//        self.init(name: name, age: 30, salary: 5000)
//    }
//
//    func test() {
//        print("i am a teacher")
//    }
//
//    func showInfo() {
//        print("teacher name \(name), age \(age), salary \(salary)")
//    }
//}

//class MediaItem {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Movie: MediaItem {
//    var director: String
//    init(name: String, director: String) {
//        self.director = director
//        super.init(name: name)
//    }
//}
//
//class Song: MediaItem {
//    var artist: String
//    init(name: String, artist: String) {
//        self.artist = artist
//        super.init(name: name)
//    }
//}
//
//let library = [
//    Movie(name: "Casablanca", director: "Michael Curtiz"),
//    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
//    Movie(name: "Citizen Kane", director: "Orson Welles"),
//    Song(name: "The One And Only", artist: "Chesney Hawkes"),
//    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
//]
//
//print(type(of: library))


//extension 的能力
///添加计算实例属性和计算类型属性
//extension Double {
//    var km: Double { return self * 1000.0 }
//    var m: Double { return self }
//    var cm: Double { return self / 100.0 }
//    var mm: Double { return self / 1000.0 }
//    var ft: Double {return self / 3.28084 }
//}
//
//let oneInch = 25.4.mm
//print("One inch is \(oneInch) meters")
//let threeFeet = 3.ft
//print("Three feet is \(threeFeet) meters")

///添加新的初始化器
//struct Size {
//    var width = 0.0, height = 0.0
//}
//
//struct Point {
//    var x = 0.0, y = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//}
//
//extension Rect {
//    init(center: Point, size: Size) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: Point(x: originX, y: originY), size: size)
//    }
//}
//
//let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))

///以为已有的类型添加新的实例方法和类型方法
//extension Int {
//    func repetitions(task: () -> Void) {
//        for _ in 0..<self {
//            task()
//        }
//    }
//}
//
//3.repetitions {
//    print("Hello!")
//}

/// 修改（或异变）实例本身
//extension Int {
//    mutating func square() {
//        self = self * self
//    }
//}
//var someInt = 3
//someInt.square()
//print(someInt)

///为已有的类型添加新的下标
//extension Int {
//    subscript(digitIndex: Int) -> Int {
//        var decimalBase = 1
//        for _ in 0..<digitIndex {
//            decimalBase *= 10
//        }
//        return (self / decimalBase) % 10
//    }
//}
//
//746381295[0]
//746381295[1]
//746381295[2]
//746381295[8]

///型添加新的内嵌类型
//extension Int {
//    enum Kind {
//        case negative, zero, positive
//    }
//    var kind : Kind {
//        switch self {
//        case 0:
//            return .zero
//        case let x where x > 0:
//            return .positive
//        default:
//            return .negative
//        }
//    }
//}
//
//1.kind

//协议
//protocol FullyNames {
//    var fullNmae: String { get }
//}
//
//struct Person: FullyNames {
//    var fullNmae: String
//}
//
//let john = Person(fullNmae: "John Appleseed")
//print(john.fullNmae)
//
//class Starship: FullyNames {
//    var prefix: String?
//    var name: String
//
//    init(name: String, prefix: String? = nil) {
//        self.name = name
//        self.prefix = prefix
//    }
//
//    var fullNmae: String {
//        return ( prefix != nil ? prefix! + " " : "") + name
//    }
//}
//
//var ncc1701 = Starship(name: "Enterprise")
//print(ncc1701.fullNmae)

//protocol Named {
//    var name: String { get }
//}
//
//protocol Aged {
//    var age: Int { get }
//}
//
//struct Person: Named, Aged {
//    var name: String
//    var age: Int
//}
//
//func wishHappyBirthday(to celebrator: Named & Aged) {
//    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)")
//}
//
//let person = Person(name: "Melcolm", age: 21)
//wishHappyBirthday(to: person)

//protocol TextRepresentable {
//    var textualDescription: String{ get }
//}
//
//extension Array: TextRepresentable where Element: TextRepresentable {
//    var textualDescription: String {
//        let itemsAsText = self.map { $0.textualDescription }
//        return "[" + itemsAsText.joined(separator: ",") + "]"
//    }
//}
//
//struct Hamster {
//    var name: String
//    var textualDescription: String {
//        return "A hamster named \(name)"
//    }
//}
//
//extension Hamster: TextRepresentable {}
