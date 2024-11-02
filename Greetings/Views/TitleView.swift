//
//  TitleView.swift
//  Greetings
//
//  Created by joe on 10/28/24.
//

import SwiftUI

/// This is the title view of the app which
/// displays a title, a substitle, which randomly changes on tap
/// and we have colorful disc which rotates on tap and
/// that is amazing.
struct TitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring how views work"
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
            
            Spacer()
            
            RotatableCircleView()
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
