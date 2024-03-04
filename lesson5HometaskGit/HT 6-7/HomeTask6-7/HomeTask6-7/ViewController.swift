//
//  ViewController.swift
//  HomeTask6-7
//
//  Created by Vitali Bahdanau on 23.02.24.
//

import UIKit

//HomeTask 6

let array: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
let array1 = [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
let result = array + array1
print(result)
// это был мой вариант, но я понял что слишко неудобно это писать и нашел в интернете другой вариант, и немного задумался, не могу вспомнить такой синтаксим обозначения массива через скобки, но он куда удобнее
let numbers = (0...14).map { $0 }
let numbers1 = (15...30).map { $0 }
print(numbers + numbers1)
// варинат из интернета

let array = [2,8,16]
let arraySq = array.map({$0 * $0})
print(arraySq)
// решение нашел через методичку, изначально хотел расписыать функцию через func, но появилось много ошибок и я сделал как нашел в методичке. Не знаю нормально ли я делал изначально)

let array3 = [1, 2, 3, 4, 5, 6, 7, 8]
let sortArray = array3.filter ({ $0 % 2 == 0 })
print(sortArray)
// тут пытался через сортед сделать, но ничего не вышло, нашел вариант с фильтром

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
//  вот с этой функцией немного не понял, в целом ее не понял, но интересно что распечатало 1 как тип дабл, вот тут вообще не понял почему



//Lesson 7


class Person {
    let name: String
    let surname: String
    let age: Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}


class Director: Person {
    let experience: Int
    let rating: Int
    
    init(name: String, surname: String, age: Int, experience: Int, rating: Int) {
        self.experience = experience
        self.rating = rating
        super.init(name: name, surname: surname, age: age)
    }
}


struct Address {
    let x: Double
    let y: Double
    let streetName: String
}


class Student: Person {
    let className: Int
    var grades: [(subject: String, mark: Int)]
    
    init(name: String, surname: String, age: Int, className: Int, grades: [(subject: String, mark: Int)] = []) {
        self.className = className
        self.grades = grades
        super.init(name: name, surname: surname, age: age)
    }
    
    func printInfo() {
        print("\(surname) \(name) (\(className))")
        for grade in grades {
            print("\(grade.subject): \(grade.mark)")
        }
    }
}


class School {
    let name: String
    let address: Address
    let director: Director
    var students: [Student]
    
    init(name: String, address: Address, director: Director, students: [Student] = []) {
        self.name = name
        self.address = address
        self.director = director
        self.students = students
    }
    
    func printInfo() {
        print("School: \(name)")
        print("Address: \(address.streetName), X: \(address.x), Y: \(address.y)")
        print("Director: \(director.surname) \(director.name), Experience: \(director.experience), Rating: \(director.rating)")
        print("Students:")
        for student in students {
            student.printInfo()
        }
    }
}

// Создаем объекты
let director = Director(name: "John", surname: "Konors", age: 45, experience: 10, rating: 9)
let address = Address(x: 50.0, y: 60.0, streetName: "sqweasfd")
let school = School(name: "School", address: address, director: director)

let student1 = Student(name: "Sara", surname: "Konors", age: 16, className: 10, grades: [("Math", 95), ("History", 85)])
let student2 = Student(name: "Rid", surname: "Konors", age: 15, className: 9, grades: [("Math", 90), ("History", 80)])
school.students = [student1, student2]

school.printInfo()


