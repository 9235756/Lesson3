//
//  main.swift
//  Lesson3
//
//  Created by Andrei Naumenko on 21.07.2021.
//

import Foundation

enum SportMarka: String {        //Список перечислений спорткаров
    case Toyota
    case Bently
    case Zaporogets
    case Ferrari
}

enum TrunkMarka: String {        //Список перечислений грузовых авто
    case Kamaz
    case Zil
    case Tatra
    case Scania
}

enum Dvig {                        //Двигатель работает/выключен
    case rabotaet, otkluchen
}

enum Okna {                        //Окна открыты/закрыты
    case open, closed
}

enum Peredacha: Int {                        //Номер передачи
    case nitral
    case pervaia
    case vtorai
    case tretia
}



struct SportCar {                  //Описываем структуру спорткаара
    var sportMarka: SportMarka
    var god: Int
    var vbagage: Double
    var zapbagage: Double
    var dvig: Dvig
    var okna: Okna
}
    
struct TrunkCar {                  //Описываем структуру грузового автомобиля
    var trunkMarka: TrunkMarka
    var god: Int
    var vbagage: Double
    var zapbagage: Double
    var dvig: Dvig
    var okna: Okna
    
    
    mutating func statOkno (peredacha: Int) {    //Добавил метод меняющий св-во структуры
        switch peredacha {
        case 0:
                self.okna = .closed     //машина на 0 передачи, окна закрыты
        case 1:
                self.okna = .open       // машина 1 и более - окна открыты
        case 2:
                self.okna = .open
        case 3:
                self.okna = .open
        default:
                print("нет такой передачи")
        }
    }
        
}

var car1 = SportCar (sportMarka: .Bently, god: 2000, vbagage: 350, zapbagage: 50, dvig: .otkluchen, okna: .closed) //Бентли 2000г багаж 350л заполненный на 50л с откл двиг и закр. окнами
    
var tcar1 = TrunkCar(trunkMarka: .Zil, god: 2003, vbagage: 1000, zapbagage: 10, dvig: .otkluchen, okna: .closed) //Зил 2003г багаж 1000 л заполненный на 10л с откл двиг и закр. окнами

car1.dvig = .rabotaet                   //машина завилась
car1.okna = .open                       //окна открыты
car1.zapbagage += 50                    //В багажник загрузили еще 50 л груза
print("Багажник заполнен в объеме \(car1.zapbagage) л из \(car1.vbagage) л")

tcar1.dvig = .rabotaet
tcar1.statOkno(peredacha: Peredacha.pervaia.rawValue)       //вызываем метод из структуры
print("Машина поехала, окна: \(tcar1.okna) ")
tcar1.statOkno(peredacha: Peredacha.nitral.rawValue)
print("Машина поехала, окна: \(tcar1.okna) ")


print("Грузовик марки \(tcar1.trunkMarka),\(tcar1.god) выпуска, с окнами \(tcar1.okna)")

