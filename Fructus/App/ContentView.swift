//
//  ContentView.swift
//  Fructus
//
//  Created by Juan Lopez on 26/2/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                            FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                        }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }// BUTTON
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
        } // NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
