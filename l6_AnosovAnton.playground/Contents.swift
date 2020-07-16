import UIKit

 
    
    class Car {
    var weight: Double
    var  carfenderWeight: Double
    var carHood: Int
    var aDoorWeight: Double
    
        func totalWeight () -> Double {
            return carfenderWeight + Double(carHood) + aDoorWeight
        }
        
        init(carfenderWeight: Double, carHood: Int, aDoorWeight: Double, weight: Double) {
            self.carfenderWeight = carfenderWeight
            self.carHood = carHood
            self.aDoorWeight = aDoorWeight
            self.weight = weight
        }
}
    class TruckCar {
    var  carfenderWeight: Double
    var carHood: Int
    var aDoorWeight: Double
    var weight: Double
        
        func totalWeight () -> Double {
            return carfenderWeight + Double(carHood) + aDoorWeight
        }
        
        init(carfenderWeight: Double, carHood: Int, aDoorWeight: Double, weight: Double) {
            self.carfenderWeight = carfenderWeight
            self.carHood = carHood
            self.aDoorWeight = aDoorWeight
            self.weight = weight
        }

}

struct Queue<T> {                   // T - это какой-то пока неизвестный тип
    private var elements: [T] = []
    // массив типа Т
    mutating func push(_ element: T) {      // добавляем элемент Т
        elements.append(element)
        }
    mutating func pop() -> T? {           // извлекаем элемент типа Т
         return elements.removeLast()
        }
    
     func filter(_ predicate: (T) -> Bool ) -> [T] {
            var result = [T]()
            for item in elements {
                if predicate(item) {
                    result.append(item)
                }
            }
            return result
        }
}

var queuekCar = Queue<Car> ()
var queueTruckCar = Queue<TruckCar> ()

queuekCar.push(Car(carfenderWeight: 5.3, carHood: 2, aDoorWeight: 5.2, weight: 1000))
queuekCar.push(Car(carfenderWeight: 3.2, carHood: 4, aDoorWeight: 4.8, weight: 1100))
queueTruckCar.push(TruckCar(carfenderWeight: 10.1, carHood: 5, aDoorWeight: 7.3, weight: 3000))
queueTruckCar.push(TruckCar(carfenderWeight: 9.2, carHood: 10, aDoorWeight: 7.8, weight: 5000))
print(queuekCar)

queuekCar.pop ()
print(queuekCar)




var queue = Queue<Int>()
queue.push(23)
queue.push(2)
queue.push(45)
queue.push(46)

print(queue)

print(queue.filter {
    $0 > 23
})
