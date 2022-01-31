import UIKit
import Foundation

// #Protocol#
//protocol A {
//    var a: Int { get set }
//    func display()
//}
//
//class AA: A {
//    var a: Int
//
//    func display() {
//
//    }
//
//}
//
//var aa = AA()

protocol Moveable {
    var name: String { get }
    func walk()
}

extension Moveable {
    func display() {
        print("내 이름은 \(name)")
    }
}

protocol Runnable: Moveable {
    func run()
}

protocol Flyable {
    func fly()
}

class Human: Runnable {
    var name: String = "사람"
    
    func walk() {
        print("저벅저벅")
    }
    
    func run() {
        print("후다닥")
    }
}

class Rabit: Runnable {
    var name: String = "토끼"
    
    func walk() {
        print("깡총깡총")
    }
    
    func run() {
        print("쌩~")
    }
}
//
//class Bird: Moveable, Flyable {
//    var name: String = "새"
//
//    func walk() {
//        print("사뿐사뿐")
//    }
//
//    func fly() {
//        print("파닥파닥")
//    }
//}
//
//var a: Runnable = Human()
//a.walk()
//a.run()
//a.display()
//
//var bird: Flyable & Moveable = Bird()
//bird.fly()
//bird.display()

struct Bird: Moveable, Flyable {
    var name: String = "새"
    
    func walk() {
        print("사뿐사뿐")
    }
    
    func fly() {
        print("파닥파닥")
    }
}

enum RunnableAnimal: Runnable {
    case cat
    case dog
}

extension RunnableAnimal {
    var name: String {
        switch self {
        case .dog:
            return "개"
        case .cat:
            return "고양이"
        }
    }
    
    func walk() {
        switch self {
        case .dog:
            print("개가 걷는다")
        case .cat:
            print("고양이가 걷는다")
        }
    }
    
    func run() {
        switch self {
        case .dog:
            print("콩콩콩")
        case .cat:
            print("...")
        }
    }
}

//RunnableAnimal.dog.run()
//RunnableAnimal.cat.display()

var list: [Runnable] = [RunnableAnimal.cat, Rabit(), Human()]

for target in list {
    target.display()
    target.run()
}
