//
//  ContentView.swift
//  Fructus
//
//  Created by Juan Lopez on 26/2/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                        FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
