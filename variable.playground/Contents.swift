import UIKit

// 변수 선언
//let a: Double = 1
//let b = 1.2
//
//var c = a + b
//
//print(c)

// Any
//let a: Any = 1
//let b: Any = 1.6

// 타입 캐스팅
//let a = 1 as! Double // 강제
//let b = 1 as? Double // 실패하게 되면 널이 됨

//
//var a: Double {
//    Date().timeIntervalSince1970
//}
//print(a)
//print(a)
//print(a)
//print(a)

//
//var a: Int = 0 {
//    didSet {
//        print(oldValue)
//    }
//    willSet {
//        print(newValue)
//    }
//}
//
//a = 1

//
//var b = 0
//
//var a: Int {
//    get {
//        return b
//    }
//
//    set {
//        b = newValue
//    }
//}
//
//a = 5
//print(b)

// 튜플
//var a: (Int, Int, String) = (1, 2, "Hello World")
//
//print(a.0)
//print(a.1)
//print(a.2)

// 튜플 네임 설정
var a: (string: String, value: Int) = ("Hello World", 1)

print(a.string)
print(a.value)
