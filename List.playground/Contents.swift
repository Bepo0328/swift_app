import UIKit

// List
//var list: [Int] = Array<Int>()
//var list: [Int] = []
//
//var list: [Int] = [1, 2, 3, 4, 5]
//var sub: [Int] = [6, 7, 8, 9, 10]
//
//print(list[0])
//print(list[1])
//
//print(list.count)
//print(list.isEmpty)
//list.append(6)
//
//var sum = list + sub
//print(sum)

// Dict
//var dictionary = Dictionary<String, Any>()
//
//var dic2: [String: String] = [:]
//
//dic2["first"] = "Hello"
//dic2["second"] = "world"
//
//let a = dic2["first", default: ""]
//let b = dic2["second", default: ""]
//let c = dic2["third", default: "fail"]
//
//print(a)
//print(b)
//print(c)
//
//print(dic2.keys)
//print(dic2.values)

// Set
//var a: Set<Int> = [1, 2, 3, 4, 5]
//
//print(a.count)
//print(a.isEmpty)
//a.insert(1)
//a.remove(1)
//
//print(a)

// 고차함수
var a = [1, 2, 3, 4, 5]

// Filter
//var filted = a.filter({ value -> Bool in
//    if value > 4 {
//        return true
//    } else {
//        return false
//    }
//})
//var simpleFilter = a.filter{$0 > 4}
//print(simpleFilter)

// Map
//var strs = a.map({ value -> String in
//    return String(value)
//})
//var simpleStrs = a.map{String($0)}
//print(strs)
//print(simpleStrs)
//var strs = a.filter{$0 > 4}.map{String($0)}
//print(strs)

// Reduce
a.reduce(1, { (result, current) -> Int in
    return result * current
})
