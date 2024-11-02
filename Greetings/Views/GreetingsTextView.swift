//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by joe on 11/2/24.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitle: LocalizedStringKey
    let subtitles: [LocalizedStringKey] = [
        "Exploring how views work",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }
        .onTapGesture {
            // change subtitle
            subtitle = subtitles
                .randomElement() ?? LocalizedStringKey("Exploring how views work")
        }
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring how views work"))
}
