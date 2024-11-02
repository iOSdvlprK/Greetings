//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by joe on 11/2/24.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
                
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
