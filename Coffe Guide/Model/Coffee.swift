//
//  Coffee.swift
//  Coffe Guide
//
//  Created by Sualp Danacı on 24.06.2024.
//

import Foundation

struct Coffee: Identifiable {
    var id = UUID()
    var type: CoffeeType
    var name: String
    var recipe: Recipe
}

// Örnek Kahveler
let doubleEspresso = Coffee(type: CoffeeType(id: UUID(), name: "DoubleEspresso", coffees: []), name: "DoubleEspresso", recipe: doubleEspressoRecipe)
let filterLatte = Coffee(type: CoffeeType(id: UUID(), name: "filterLatte", coffees: []), name: "filterLatte", recipe: filterLatteRecipe)
