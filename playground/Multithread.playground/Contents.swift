import UIKit

//for i in 0...10 {
//    Thread.detachNewThread {
//        print(i)
//    }
//}

//class ObjectForThread {
////    func threadTest() {
////        let thread = Thread(target: self, selector: #selector(threadWorker), object: nil)
////        thread.start()
////        print("threadTest")
////    }
//
//    func threadTest() {
////        let operation = BlockOperation(block: { [weak self] in self?.threadWorker()
////            return
////        })
//        let operation = MyOperation()
//        operation.completionBlock = { () -> Void in
//            print("--- operation.completionBlock ---")
//        }
//        let queue = OperationQueue()
//        queue.addOperation(operation)
//        print("threadTest")
//    }
//
//    @objc func threadWorker() {
//        print("threadWorker")
//    }
//}
//
//class MyOperation: Operation {
//    override func main() {
//        sleep(1)
//        print("MyOperation")
//    }
//}
//
//let obj = ObjectForThread()
//obj.threadTest()

//let workingGroup = DispatchGroup()
//let workingQueue = DispatchQueue(label: "request_queue")
//
//workingGroup.enter()
//workingQueue.async {
//    Thread.sleep(forTimeInterval: 1)
//    print("接口 A 数据请求完成")
//    workingGroup.leave()
//}
//
//workingGroup.enter()
//workingQueue.async {
//    Thread.sleep(forTimeInterval: 1)
//    print("接口 B 数据请求完成")
//    workingGroup.leave()
//}
//
//print("我是最开始执行的，异步操作里的打印后执行")
//
//workingGroup.wait()
//print("接口 A 和接口 B 的数据都请求完毕！开始合并两个接口的数据")

//var seconds = 10
//let timer : DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.global())
//timer.schedule(deadline: .now(), repeating: 1.0)
//timer.setEventHandler {
//    seconds -= 1
//    if seconds < 0 {
//        timer.cancel()
//    } else {
//        print(seconds)
//    }
//}
//timer.resume()

let queue = DispatchQueue(label: "label")
//queue.async {
//    print("in queue async")
//    queue.sync {
//        print("in queue sync")
//    }
//}

//var array = Array(0...10000)
//let lock = NSLock()
//
//func getLastItem() -> Int? {
//    lock.lock()
//    var temp: Int? = nil
//    if array.count > 0 {
//        temp = array[array.count - 1]
//    }
//    lock.unlock()
//    return temp
//}
//
//func removeLastItem() {
//    lock.lock()
//    array.removeLast()
//    lock.unlock()
//}
//
//queue.async {
//    for _ in 0...10000 {
//        removeLastItem()
//    }
//}
//
//let queue2 = DispatchQueue(label: "label2")
//
//queue2.async {
//    for _ in 0...10000 {
//        if let item = getLastItem() {
//            print(item)
//        }
//    }
//}


