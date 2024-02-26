//
//  OnboardingView.swift
//  Fructus
//
//  Created by Juan Lopez on 26/2/24.
//

import SwiftUI
// MARK: PROPERTIES

var fruits: [Fruit] = fruitData

// MARK: BODY

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } // LOOP
        } // TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
