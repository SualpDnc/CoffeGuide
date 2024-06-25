//
//  CoffeListView.swift
//  Coffe Guide
//
//  Created by Sualp Danacı on 24.06.2024.
//

import SwiftUI

struct CoffeeListView: View {
    
    var coffeeType: CoffeeType

    var body: some View {
      
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(coffeeType.coffees) { coffee in
                        NavigationLink(destination: RecipeDetailView(recipe: coffee.recipe)) {
                            VStack {
                                Image(systemName: "cup.and.saucer.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.white)
                                    .padding()
                                Text(coffeeType.name)
                                    .frame(width: 200, height: 50)
                                    .bold()
                                    .background(Color.black.opacity(0.3))
                                    .cornerRadius(10)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            .padding()
                            .background(Color.brown)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                        }
                    }
                }
                .padding(.horizontal)
                
            }.padding(.bottom,40)
            .navigationTitle(" ")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Coffees")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.brown)
            }
        }
        

    }
}


