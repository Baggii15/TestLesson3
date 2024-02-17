//
//  ViewController.swift
//  Lesson5Hometask
//
//  Created by Vitali Bahdanau on 17.02.24.
//

import UIKit

//// task 1
func helloWorld() {
    print("Hello World")
}
helloWorld()

func printHi(Hi name: String) {
    print("Hello \(name)")
}
printHi(Hi: "Misha")  // туплю и не совсем понимаю разницу между параметром и аргументом

func Imia(a: String, b: String) -> String {
    let result = a + b
    print(a + b)
    return result
}
Imia(a: "Hello!", b: "Misha")  // могу ли я передать стринговые значения внутри функции? что бы не вводить текст после функции? Кажется что я тут написал много лишнего

//task 2

func argValue(a point1: String = "test", b point2: String = "sum") -> String {
    let sumValue: String = point1 + point2  // если я указал поинт 1 и 2 как стринг, почему я должен указывать тип еще раз?
    print("\(sumValue.count)")
    return sumValue
}
argValue()

//task 3

func Kvadrat() -> Double {
    let a: Int = 5
    let result = pow(Double(a),2)
    return result
}
Kvadrat()
//task 4
func sum() -> Int {
    let a: Int = 5
    let b: Int = 5
    let result = a + b  // аналогично с другими математическими методами
    return result
}
sum()

// task 5

func KrugS(a: Int, b: Float) -> Float {
    let result = Float(a) + b
    return result
}
let result = KrugS(a: 5, b: 3.14)
print(result)

//task 6

// 6
func isNightNow(Night: Bool, Day: Bool) -> Bool {
    let Night = true
    let Day = false
    if Night {
        print("it is Night")
    }
    return Night
}
isNightNow(Night: true, Day: false)

//task 7  -  очень долго думал. Нашел ответ в интернете

func Prostoe(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    if number == 2 || number == 3 {
        return true
    }
    if number % 2 == 0 || number % 3 == 0 {
        return false
    }
    
    var i = 5
    while i * i <= number {
        if number % i == 0 || number % (i + 2) == 0 {
            return false
        }
        i += 6
    }
    return true
}

// Проверяем числа от 0 до 100
for i in 0...100 {
    if Prostoe(i) {
        print("\(i) is prime")
    } else {
        print("\(i) is composite")
    }
}

for i in 0...100 {
    if Prostoe(i) {
        print("\(i) Prostoe")
    } else {
        print("\(i) Sostavnoe")
    }
}

//task 8   тоже не без помощи интернета

func getSeason(month: Int) -> String {
    switch month {
    case 1, 2, 12:
        return "Winter"
    case 3...5:
        return "Spring"
    case 6...8:
        return "Summer"
    case 9...11:
        return "Autumn"
    default:
        return "Invalid month number"
    }
}

let month = 6
let season = getSeason(month: month)

print("Month \(month) is \(season)")


enum Season {
    case winter, spring, summer, autumn
}

func getSeason(months: Int) -> Season? {
    switch month {
    case 1, 2, 12:
        return .winter
    case 3...5:
        return .spring
    case 6...8:
        return .summer
    case 9...11:
        return .autumn
    default:
        return nil
    }
}

if let season = getSeason(months: 6) {
    print("6 месяц относится к \(season)")
} else {
    print("Не верный месяц")
}

