//
//  CoffeType.swift
//  Coffe Guide
//
//  Created by Sualp Danacı on 24.06.2024.
//

import Foundation

struct CoffeeType: Identifiable {
    var id = UUID()
    var name: String
    var coffees: [Coffee]
}


let espressoType = CoffeeType(id: UUID(), name: "Espressos", coffees: [doubleEspresso])
let latteType = CoffeeType(id: UUID(), name: "Lattes", coffees: [filterLatte])
