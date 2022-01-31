import UIKit
import Foundation

// Memory
struct Struct1 {
    var a: Int = 0
}

class Class1 {
    var a: Int = 0
    weak var class2: Class2?
//    unowned var class2: Class2
    
    deinit {
        print("class 1 deninit")
    }
}

class Class2 {
    var a: Int = 0
    var class1: Class1?
    
    deinit {
        print("class 2 deninit")
    }
}

var struct1 = Struct1() // Stack
var class1: Class1? = Class1()   // Heap
var class2: Class2? = Class2()

class1?.class2 = class2
class2?.class1 = class1

class1 = nil
class2 = nil

print(Date().timeIntervalSince1970)
