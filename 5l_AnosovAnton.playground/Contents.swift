import UIKit

protocol Car {
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
    func windowsOpen() {
        print("Окна открыты")
    }
}
    
class SportCar: Car {
    func enginOn() {
        print("Двигатель запущен")
    }
}


        
