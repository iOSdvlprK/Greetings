//
//  TextView.swift
//  Greetings
//
//  Created by joe on 10/27/24.
//

import SwiftUI

struct TextView: View {
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color: color.opacity(0.5), radius: 5, x: 0, y: 3)
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hummus", color: .blue)
        TextView(text: "Peace", color: .purple)
    }
}
