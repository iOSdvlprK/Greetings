//
//  MainView.swift
//  Greetings
//
//  Created by joe on 11/3/24.
//

import SwiftUI

// Portrait → Compact width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        // Portrait mode?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        } else {
            // Landscape mode?
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
