import UIKit

protocol Car {
    var color: String { get set }
    func enginOn()
    func windowsOpen()
}

extension Car {
    func enginOn() {
        print("Двигатель запущен")
    }
    func windowsOpen() {
        print("Окна открыты")
    }
    
}

class TrunkCar: Car {
    let model: String
    var color: String
    var trailer: Bool
    
    func colorStatus() {
        print("Машина красного цвета")
    }
    func windowsOpen() {
        print("Окна открыты")
    }
    
    init (model: String, color: String, trailer: Bool) {
        self.trailer = trailer
        self.color = color
        self.model = model
    }
}

class SportCar: Car {
    let model: String
    var color: String
    var pneumo: Bool
    
    func enginOn() {
        print("Двигатель запущен")
    }
    
    init(model: String, color: String, pneumo: Bool) {
        self.pneumo = pneumo
        self.color = color
        self.model = model
    }
    
}
extension SportCar: CustomStringConvertible {
    var description: String {
        "This is Sport Car"
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        "This is Trunk Car"
    }
}

let car1 = SportCar(model: "Kia", color: "Red", pneumo: true)
let car2 = TrunkCar(model: "Scania", color: "Blue", trailer: true)
car1.color
car1.enginOn()
car2.trailer
car2.windowsOpen()
car1.model

