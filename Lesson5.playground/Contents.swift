import UIKit

//{ (value: Int) -> Void in
//    body
//
//}

//
//let printClouser: () -> Void = {
//    print("Hello world")
//}
//print(printClouser())
//
//var a: Int = 1
//var b: Int = 2
//
//print(a)
//
//var sum: () -> Int = { [a, b] in  // [] значения в скобказ позвалят заморозить их для изменений
//
//    return a + b
//}
// 
//
//print(sum())
//
//a = 3
//
//print(sum())


// пример фильтра который выводит значение = 100
//let wallet: [Int] = [10, 100, 20 , 50, 200]
//
//func handle100(values: [Int]) -> [Int]{
//    var result: [Int] = []
//    
//    for value in values {
//        if value == 100 {
//            result.append(value)
//        }
//    }
//    return result
//}
//
//let result = handle100(values: wallet)
//print(result)
//
//
//func handle(values: [Int], closure: (Int) -> Bool) -> [Int] {
//    var result: [Int] = []
//    for value in values {
//        if closure(value) {
//            result.append(value)
//        }
//    }
//    return values
//}

//let value100 = handle(values: wallet, closure: handle100)

 var someDay = "Monday"
func setupAlarmWithoutEnums() {
    if someDay == "Monday" || someDay == "Tuesday" {
        print("To set alarm for 8 am")
    } else {
        print("Alarm sun set")
    }
}

setupAlarmWithoutEnums()
enum EnumName {
    case value
}
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thuesday
    case friday
    case saturday
    case sunday
}

let day: Weekday = .friday
let day2 = Weekday.friday


func setupAlarmWithoutEnums2() {
    if day == .monday || day == .tuesday {
       print("To set alarm for 8 am")
   } else {
       print("Alarm sun set")
   }
}

setupAlarmWithoutEnums2()

switch day {
case .monday:
    print("1")
case .tuesday:
    print("2")
case .wednesday:
    print("3")
case .thuesday:
    print("4")
case .friday:
    print("5")
case .saturday:
    print("6")
case .sunday:
    print("7")
}

// опционалы обозщначаются знаком?
let optionalString: String? = "Some string"
let optionalString2: Optional<String> = nil // vtoroi variant ? polna9 zapis
let optionalInt: Int? = 5

//print(optionalInt)
//print(optionalInt!)

if let string = optionalString {
    print("\(string)")
} else {
    print("string empty")
}
