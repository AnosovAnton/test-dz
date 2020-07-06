import UIKit

enum act {
    case workEng, doesWorkEng, openW, closeW, loadingC, unloadingC
    }

struct sportCar {
    let pneumo: Bool
    var model: String
    let year: Int
    var vVolume: Double
    var closeWindows: act
    var fillUpTheVolume: act
    var workEngin: act
    
    mutating func cardoesWorkEngins() {
        self.workEngin = .doesWorkEng
    }
    mutating func carWorkEngins() {
        self.workEngin = .workEng
    }
    mutating func carsCloseWindows() {
        self.closeWindows = .closeW
    }
    mutating func carsOpenWindows() {
        self.closeWindows = .openW
    }
    var actSportCar: act {
        willSet {
            if newValue  == .closeW {
                print("Окна закрыты")
            }
            else if newValue == .doesWorkEng {
                print("Не работающий двигатель")
            }
            else if newValue == .loadingC {
                print("Загруженный багажник")
            }
            else if newValue  == .openW {
                print("Окна открыты")
            }
            else if newValue == .workEng {
                print("Работающий двигатель")
            }
            else if newValue == .unloadingC {
                print("Выгруженный багажник")
            }
            else if pneumo == true {
                print("Есть пневматическая подвеска")
            }
            else {
                print("Нет подвески")
            }
        }
    }

            init( model: String, year: Int, vVolume: Double, closeWindows: act, fillUpTheVolume: act, workEngin: act, pneumo: Bool) {
                self.model = model
                self.year = year
                self.vVolume = vVolume
                self.closeWindows = closeWindows
                self.fillUpTheVolume = fillUpTheVolume
                self.workEngin = workEngin
                self.pneumo = pneumo
    }
    
    func resultSpotCar(){
    print("авто \(model) , год выпуска \(year), объем багажника \(vVolume), окна \(closeWindows), загруженный багажник \(fillUpTheVolume), двигатель \(workEngin), подвеска \(pneumo)")
    }
}

struct truckCar {
    var trailer: Bool
    var model: String
    let year: Int
    var vVolume: Double // объем багажника
    var closeWindows: act
    var fillUpTheVolume: act // заполненый объем багажника
    var workEngin: act
    
        mutating func cardoesWorkEngins() {
               self.workEngin = .doesWorkEng
        }
        mutating func carWorkEngins() {
               self.workEngin = .workEng
        }
        mutating func carsCloseWindows() {
            self.closeWindows = .closeW
        }
        mutating func carsOpenWindows() {
            self.closeWindows = .openW
        }
    
    var actTruckCar: act {
        willSet {
            if newValue  == .closeW {
                print("Окна закрыты")
            }
            else if newValue == .doesWorkEng {
                print("Не работающий двигатель")
            }
            else if newValue == .loadingC {
                print("Загруженный багажник")
            }
            else if newValue  == .openW {
                print("Окна открыты")
            }
            else if newValue == .workEng {
                print("Работающий двигатель")
            }
            else if newValue == .unloadingC {
                print("Выгруженный багажник")
            }
            else if trailer == true {
                print("Есть прицеп")
            }
            else {
                print("Прицепа нет")
                }
            }
    }
        
        init( model: String, year: Int, vVolume: Double, closeWindows: act, fillUpTheVolume: act, workEngin: act, trailer: Bool) {
            self.model = model
            self.year = year
            self.vVolume = vVolume
            self.closeWindows = closeWindows
            self.fillUpTheVolume = fillUpTheVolume
            self.workEngin = workEngin
            self.trailer = trailer
    }
    func resultTruckCar(){
        print("авто \(model) , год выпуска \(year), объем багажника \(vVolume), окна \(closeWindows), загруженный багажник \(fillUpTheVolume), двигатель \(workEngin), прицеп \(trailer)")
    }
}

var car1 = sportCar(model: "Vovo", year: 2020, vVolume: 5, closeWindows: .closeW, fillUpTheVolume: .unloadingC, workEngin: .workEng, pneumo: true)
   
