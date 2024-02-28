import UIKit


//strukturi

struct Human {
    
    var firstname: String
    var secondName: String
    
    func description() -> String {
        return "Name \(firstname), second name: \(secondName)"
    }
    
}
// sozdaem object
let maleIvan: Human = Human(firstname: "Ivan", secondName: "Ivanov")

maleIvan.description()

print(maleIvan.description())

//func humans(_ humans: [Human], add human: Human) {
//    var result = humans
//    result.append(humans)
//    print("Human count: \(result.count)")
//    
//}

//MARK: - classi

class Car {
    
    
    var color: String = "some value"
    var model: String
    init(color: String, model: String = "some value") {
        self.color = color
        self.model = model
    }
    
    func description() -> String {
        return "Car color:\(color), car model:\(model)"
    }
    func changeModel(_ text: String) {
        self.model = text   // обращаемся к модели что бы ее заменить (про всю функцию)
    }
}
let BMW = Car(color: "Black", model: "BMW")
let bmw3 = BMW
print(BMW.description())
bmw3.model = "BMW3"
print(BMW.description())

BMW.changeModel("BMW 7")
print(BMW.description())


// инкапсуляция: модификаторы доступа -  open , public, internal, fileprivate, final

