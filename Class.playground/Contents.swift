import UIKit
import Foundation

// #Struct & Class#
//struct Struct1 {
//    var value: Int = 0
//
//    func display() {
//        print(value)
//    }
//}
//
//class Class1 {
//    var value: Int = 0
//
//    func display() {
//        print(value)
//    }
//}
//
//class Class2: Class1 {
//    deinit {
//
//    }
//}

//var struct1 = Struct1()
//var class1 = Class1()
//
//struct1.value
//class1.value
//
//struct1.display()
//class1.display()

//let struct1 = Struct1()
//let class1 = Class1()
//
//var struct2 = struct1
//var class2 = class1
//
//struct1.value = 5
//class1.value = 1
//
//class2.value = 5
//class1.value

// #Enumeration#
//enum GameLevel {
//    case esay
//    case medium
//    case hard
//}
//
//let level = GameLevel.esay
//let level: GameLevel = .esay
//let level: [GameLevel] = [.esay, .hard, .medium]
//
//enum GameLevel {
//    case supereasy
//    case esay
//    case medium
//    case hard(level: Int)
//}
//let level = GameLevel.hard(level: 100)
//
//extension GameLevel {
//    func display() {
//        switch self {
//        case.esay:
//            print("쉬움")
//        case.medium:
//            print("중간")
//        case let .hard(level):
//            print("\(level) 어려움")
//        case .supereasy:
//            print("아주 쉬움")
//        }
//    }
//}
//
//GameLevel.esay.display()
//GameLevel.hard(level: 500).display()

// #Access Controller#
/*
 private
 fileprivate
 internal
 public
 open
 */

class Stack {
    private var a: [Int] = []
    
    func push(_ value: Int) {
        a.append(value)
    }
    
    func pop() -> Int? {
        a.popLast()
    }
}

var stack = Stack()
