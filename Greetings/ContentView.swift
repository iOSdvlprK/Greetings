//
//  ContentView.swift
//  Greetings
//
//  Created by joe on 10/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello there!")
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(Color.white)
                .background(Color.green.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(color: .green, radius: 5, x: 10, y: 10)
            
            Text("Hi, welcome to Greetings!")
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(Color.white)
                .background(Color.gray.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(color: .gray, radius: 5, x: 10, y: 10)
            
            Text("Are you ready to")
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(Color.white)
                .background(Color.yellow.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(color: .yellow, radius: 5, x: 10, y: 10)
            
            Text("start exploring?")
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(Color.white)
                .background(Color.red.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(color: .red, radius: 5, x: 10, y: 10)
            
            Text("Boom.")
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(Color.white)
                .background(Color.purple.opacity(0.4))
                .cornerRadius(20.0)
                .shadow(color: .purple, radius: 5, x: 10, y: 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
