import UIKit

//var optionalString: String? = "Alex"
//var greeting = "Hello, "
//if let name = optionalString {
//    greeting = "Hello, \(name)!"
//}
//
//print(greeting)

//var name: [String] = ["Alex", "Bob"]
//
//for n in name {
//    print(n)
//}
//
//let interestingNumbers  = [
//    "Prime": [2,3,5,7,11,13],
//    "Fibonacci": [1,1,2,3,5,8],
//    "Square": [1,4,9,16,25,36]
//    
//]
//
//var largest: Int = 0
//
//for (n, numbers) in interestingNumbers {
//    print(n)
//    for n in numbers {
//        print("inner:\(n)")
//        if n > largest {
//            largest = n
//        }
//    }
//}
//print(largest)



//while loop

//var n = 2
//while n < 0 {
//    print(n)
//    n += 2
//}
//
//
//var m = 2
//repeat {
//    print(m)
//    m += 2
//} while m < 0
//
//var total = 0
//for i in 1..<4 {
//    total += i
//}
//print(total)
//


//var numbers = [ 20,9,7,13]
//
//numbers.sort()
//
//numbers.reverse()


//let resut = numbers.map({(number : Int)-> Int in
//    let result = 3 * number
//    if number % 2 == 0 {
//        return 0
//    }
//    
//    return result
//    
//})
//
//print(resut)
//
//
//
//let sortedNumbers = numbers.sorted {$0 > $1}
//print(sortedNumbers)
//
//
//let sortedNumbers2 = numbers.sorted {$1 > $0}
//print(sortedNumbers2)



let driverto = {
    print("hello world")
}

driverto()

let drivers = { (place: String) in
    print("driving to \(place)")
}

drivers("Aynalem")

let drivers1 = { (place: String) -> String in

    return "driveing to place called ,\(place) "
}

let a = drivers1("aynalem")
print (a)
