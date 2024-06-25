//
//  RecipeDetailView.swift
//  Coffe Guide
//
//  Created by Sualp Danacı on 24.06.2024.
//

import Foundation
import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe

    var body: some View {
        VStack(alignment: .leading) {
            Text(recipe.name)
                .font(.largeTitle)
                .foregroundColor(.brown)
                .bold()
            Spacer()
            
            Text("Ingredients")
                .font(.headline)
                .padding(.top)

            ForEach(recipe.ingredients, id: \.self) { ingredient in
                Text("• \(ingredient)")
            }

            Text("Steps")
                .font(.headline)
                .padding(.top)

            ForEach(recipe.steps, id: \.self) { step in
                Text("\(step)")
            }
            
            Spacer()
        }
    }
}


