//
//  Recipe.swift
//  Coffe Guide
//
//  Created by Sualp Danacı on 24.06.2024.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    var name: String
    var ingredients: [String]
    var steps: [String]
}

// Örnek Tarifler
let doubleEspressoRecipe = Recipe(name: "doubleEspresso", ingredients: ["2 tablespoons ground coffee", "1 cup water"], steps: ["Grind coffee beans", "Use espresso machine to brew coffee"])
let filterLatteRecipe = Recipe(name: "filterLatte", ingredients: ["1 shot espresso", "1 cup steamed milk"], steps: ["Brew espresso", "Steam milk", "Combine espresso and steamed milk"])
