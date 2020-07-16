import UIKit
class Car {
    var weight: Double
    var long: Int
        
        init(weight: Double, long: Int) {
            self.weight = weight
            self.long = long
        }
}
class TruckCar {
        var weight: Double
    var long: Int
        
        init(weight: Double, long: Int) {
            self.weight = weight
            self.long = long
        }
}
    

struct Queue<T> {                   // T - это какой-то пока неизвестный тип
    private var elements: [T] = []           // массив типа Т
    mutating func push(_ element: T) {      // добавляем элемент Т
        elements.append(element)
        }
    mutating func pop() -> T? {           // извлекаем элемент типа Т
         return elements.removeLast()
        }
    }

var queuekCar = Queue<Car> ()
var queueTruckCar = Queue<TruckCar> ()

queuekCar.push(Car(weight: 2.45, long: 4))
queuekCar.push(Car(weight: 3.45, long: 5))
queueTruckCar.push(TruckCar(weight: 1355.7, long: 12))
queueTruckCar.push(TruckCar(weight: 1255.7, long: 17))
