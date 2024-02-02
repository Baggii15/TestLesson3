//
//  ViewController.swift
//  dss
//
//  Created by Vitali Bahdanau on 3.02.24.
//

import UIKit

// Task 2
var integer: Int = 5
var boolen: Bool = true
var double: Double = 3.55
var float: Float = 3.1
var char: Character = "$"

let inTeger: Int = 5
let boOlen: Bool = true
let doUble: Double = 3.55
let flOat: Float = 3.1
let stRing: String = "sddd"
let chAr: Character = "$"

Int8.min
Int8.max


Int16.min
Int16.max

Int32.min
Int32.max

Int.min
Int.max

UInt8.min
UInt8.max

UInt16.min
UInt16.max

UInt32.min
UInt32.max

UInt.min
UInt.max

var string: String = "sddd"
print(string.count)
//end

//Task 3+4

var a: Int = 15
let b: Float = 3.1
var result = Float(a) * b
print(result)

let c: Double = 33.33
let d: Int = 3
var result1 = d / Int(a)
print(result1)

let e: Double = 4.3
let f: Float = 4.45
var result2 = e + Double(f)
print(result2)

let t: Int = 18
let h: Float = 4.99
var result3 = Float(t) - f
print(result3)

let j: Int = 16
let k: Float = 77.77
var result4 = j % Int(k)
print(f)  //остаток от деления имеет тип Float, почему тогда нельзя сразу делить инт на флот?

let l: Float = 17.88
let u: Double = 10.15
var result5 = Double(l) / u
print(result5)

let i: Double = 199.99
let p: Float = 16.55
var result6 = Float(i) * p
print(result6)

let s: Float = 134.55
let v: Int = 19
var result7 = Float(v) + s
print(result7)

let m: Int = 13
let n: Int = 17
var result8 = n + m
print("ответ \(result8)")

let vv: Int = 15
let nn: Int = 15
var result9 = n + m
print("ответ \(n) + \(m) = \(result9)")

//taskt 5

var isNight: Bool = true
    if isNight == false {
        print("is Day")
    }   else if isNight == true {
        print("is Night")
    }



//task 6
let str: String = "TestValue"

switch str {
case "a":
    print("Test")
case "b":
    print("Value")
default:
    print("Test Value")
}


