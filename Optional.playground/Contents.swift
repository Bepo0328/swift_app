import UIKit
import CoreFoundation

//
//var a = Optional<Int>.none
//var b = Optional<Int>.some(1)
//var c: Int?
//var d: Int? = nil
//print(c!)

// Optional Binding
//if let c = c
//{
//    print(c)
//} else {
//    print("empty")
//}

//class ClassA {
//    var a: Int?
//}
//var classA: ClassA? = ClassA()

// Optional Chaining
//classA?.a = 5
//if let a = classA?.a {
//    print(a)
//} else {
//    print("empty")
//}

// Nil-Coalescing Operation
//var value = classA?.a ?? 0
//print(value)
//var str: String?
//var result = str ?? "Hello World"
//print(result)

// Generic
class Stack<T> {
    var values: [T] = []
    
    func push(_ value: T) {
        values.append(value)
    }
    
    func pop() -> T? {
        return values.popLast()
    }
}

let stack = Stack<Int>()
stack.push(1)
stack.push(2)

stack.pop()
stack.pop()

let strStack = Stack<String>()
strStack.push("World")
strStack.push("Hello")

strStack.pop()
strStack.pop()

var a = Optional<Int>.some(1)
