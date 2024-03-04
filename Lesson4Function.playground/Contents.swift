import UIKit
//primer
//func name(parametrs) -> return type {
// function body
// }

func addingTwoNumbers() {
    let a: Int = 2
    let b: Int = 3
    print(a + b)
}

addingTwoNumbers()  //что бы вызвать функцию, нужно указать ее имя

func sumNumber() -> Int {
    let a: Int = 2
    let b: Int = 7
    let result = a + b
    return result
}
let sumResult = sumNumber()
print(sumNumber())

// polnocenniy primer

//func sumNumbers(a: Int, b: Int) -> Int {
 //   let result = a + b
//    return result  // mojno napisat return a + b i udalitb let result slojets9 v returne
//}

// let result = sumNumbers(a: 4, b: 3)
//print(result)


func minusNumberss(a: Float, b: Float) -> Double {  //можно присваивать ярлыки значению типа (value a: Float, b: Float)  " _ " переб b или а позволяет скрывать ярлык и символ если нужно

    return Double(a - b)
}
//let result = minusNumberss(a: 3.2, b: 4.3)
//print (result)


func subtraction(point x1: Double = 10, point1 x2: Double) -> Float {
    return Float(x1 - x2)
}
print(subtraction(point1: 20))
print(subtraction(point: 1, point1: 2))


func sum(values: Int...) -> Int {
    var total:Int = 0
    for value in values {
        total += value
    }
    
    return total
}
let result = sum(values: 1,2,3,4,5,6,6,7)
print(result)


//////////////////////////////////////////////////////////////////////////////////////

var x: String = "string"
var y: String = "some"

print(x)
print(y)
//создаем сквозной параметр
func swapValue(_ a: inout String, _ b: inout String) {   //inout pozvol9et men9tb znachenie const
    let temporaryA = a
    a = b
    b = temporaryA
}

swapValue(&x, &y) //сквозные параметры указываются через &

print(x)
print(y)



  ///////////////////////////

func sumNumbers1() -> Int {
    let a: Int = 2
    let b: Int = 7
    let result = a + b
    return result
    
}
//
//let mathFunstion: () -> Int = sumNumbers1
//
//let sub: (Double, Double) -> Float = subtraction
//let sum: (Double, Double) -> Float = sumNumbers1
//
//print(sub(12, 15))
//
//
//func printSub(_ mathFunction: (Double, Double) -> Float, x: Double, y: Double) {
//    print(mathFunction(x,y))
//}
//
//printSub(sub, x: 15, y: 2)

func stepForward(_ input: Int) -> Int {
    return input - 1
}

func stepBacward(_ input: Int) -> Int {
    return input - 1
}

func chooseSteoFunction(bacward: Bool) -> (Int) -> Int {
    return bacward ? stepBacward : stepForward
}

var index: Int = 3

let moveNearerToZero = chooseSteoFunction(bacward: index > 0)

while index != 0 {
    print(index)
    index = moveNearerToZero(index)
}

print("zero")
