//
//  ContentView.swift
//  remarques
//
//  Created by Keval Pipalia on 2024-04-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Sidebar()
            MainPlaceholderView() // Placeholder for the main content area
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 600, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
