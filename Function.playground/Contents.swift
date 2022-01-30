import UIKit
import Foundation

// Function
//func foo(with value: Int) -> Int {
//    value
//}
//
//func insert(object target: Int, at index: Int) {}
//
//foo(with: 100)

// Closure
//{ 매개변수 -> 리턴타입 in
//    실행코드
//}
//var a = { (value: Int) -> Int in
//    return value * 2
//}
//
//a(10)
//
//func foo(completion: () -> ()) {
//    print("foo")
//    completion()
//}
//
//foo(completion: {
//    print("completion")
//})
//
//foo() {
//    print("completion")
//}

// Extension
//class A {
//    var a = 0
//}
//
//extension A {
//    func display() {
//        print(a)
//    }
//}
//
//var a = A()
//a.display()
//
//extension Array {
//    var isNotEmpty: Bool {
//        return isEmpty == false
//    }
//
//    func display() {
//        print(self)
//    }
//
//    class SubArray {
//        var list: [Int] = []
//    }
//}
//
//var a: [Int] = []
//
//a.isNotEmpty
//a.display()
//
//[Int].SubArray

// Control Flow
// For
//var a = [5, 4, 3, 2, 1]
//for (index, value) in a.enumerated() {
//    print("\(index) = \(value)")
//}

// While
//var a = 0
//while a < 10 {
//    a += 1
//}

// Do-While
//var a = 0
//repeat {
//    print(a)
//    a += 1
//} while a < 10

// Where
//var a = [1, 2, 3, 4, 5]
//for value in a where value > 3 {
//    print(value)
//}

// IF
//var a: Int? = 0
//var b: Int? = 5
//
//if let a = a, a == 0 {
//    print("Hello")
//}
//func foo(value: Int?) {
//    if let value = value {
//        print(value)
//    } else {
//        print("empty")
//    }
//}
func foo(value: Int?) {
    guard let value = value else {
        print("empty")
        return
    }
    print(value)
}

foo(value: nil)
foo(value: 1)
