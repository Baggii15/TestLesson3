import UIKit

//let array: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
//let array1 = [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
//let result = array + array1
//print(result)


let numbers = (0...14).map { $0 }
let numbers1 = (15...30).map { $0 }
print(numbers + numbers1)
//

//let array = [2,8,16]
//let arraySq = array.map({$0 * $0})
//print(arraySq)

//let array3 = [1, 2, 3, 4, 5, 6, 7, 8]
//let sortArray = array3.filter ({ $0 % 2 == 0 })
//print(sortArray)
 
let example = ["Test", "Test1", "Test2"]
let example1 = example.map({$0 + $0})
print(example1)

let example2 = [1, 2.0, 3.0]
let example3 = example2.map({$0 * $0})
print(example3)


let example4 = ["sd", "sdd", "sd"]
let example5 = example4.map({$0.count})
print(example5)


let array4 = [1, 2, 3, 4, 5, 6, 7, 8]
let sortArray1 = array4.filter ({ $0 > 2})
print(sortArray1)

let array5 = [1, 2, 3, 4, 5, 6, 7, 8, 2]
let sortArray2 = array5.filter ({ $0 == 2})
print(sortArray2)

let ComAppay = ["1", "2.0", "tsd", "sds5"]
let double = ComAppay.compactMap { dob in
    Double(dob)
}
print(double)


struct School {
    var Student = [1, 2, 3, 4,]
    var ScName = "Some School"
    var Adress = 
}
