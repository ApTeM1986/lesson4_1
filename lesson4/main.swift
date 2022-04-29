//
//  main.swift
//  lesson4
//
//  Created by Artem Stetsenko on 29.04.2022.
//

import Foundation


enum Cargo: Int {
    case full = 40
    case semiFull = 20
}
enum Transsmition: Int {
    case manual = 0
    case auto = 500
}
class SportCar {
    var brand = ""
    var model = ""
    var transsmition : Transsmition = .auto
    func addPrice (transsmition: Transsmition)-> Int{
        var price = 0
        switch transsmition {
        case .manual:
            price = transsmition.rawValue
        case .auto:
            price += transsmition.rawValue
        }
        return price
    }
}

class Truck: SportCar{
    let cargoCapacity: Cargo
    init(brand: String, model: String, cacargoCapacity: Cargo, transsmition: Transsmition ){
        self.cargoCapacity = cacargoCapacity
        super.init()
    }
    override func addPrice(transsmition: Transsmition) -> Int {
        var price = 0
        switch transsmition {
        case .manual:
            price = transsmition.rawValue + 99
        case .auto:
            price = transsmition.rawValue + 999
        }
        return price
    }
}
var sportCar1 = SportCar()
sportCar1.brand = "Honda"
sportCar1.model = "NSX"
sportCar1.transsmition = .manual
var sportCar2 = SportCar()
sportCar1.brand = "Ferrari"
sportCar1.model = "Italia"
sportCar1.transsmition = .auto

var truck1 = Truck(brand: "DAF", model: "Interseprot", cacargoCapacity: .full, transsmition: .manual)
var truck2 = Truck(brand: "Man", model: "3000", cacargoCapacity: .semiFull, transsmition: .auto)

print("Цена за трансмиссию ",Transsmition.auto,"+", sportCar1.addPrice(transsmition: .auto),)
print("Цена за трансмиссию ",Transsmition.manual,"-", sportCar1.addPrice(transsmition: .manual))

print("Цена за трансмиссию ",Transsmition.auto,"+", truck1.addPrice(transsmition: .auto))
print("Цена за трансмиссию ",Transsmition.manual,"+", truck2.addPrice(transsmition: .manual))

