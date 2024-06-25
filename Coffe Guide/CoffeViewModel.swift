//
//  CoffeViewModel.swift
//  Coffe Guide
//
//  Created by Sualp Danacı on 24.06.2024.
//

import Foundation

class CoffeeViewModel: ObservableObject {
    @Published var coffeeTypes: [CoffeeType] = [espressoType, latteType]
}






