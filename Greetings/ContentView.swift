//
//  ContentView.swift
//  Greetings
//
//  Created by joe on 10/25/24.
//

import SwiftUI

struct ContentView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello there!", color: .green),
        .init(text: "Hi, welcome to Greetings!", color: .gray),
        .init(text: "Are you ready to", color: .yellow),
        .init(text: "start exploring?", color: .red),
        .init(text: "Boom.", color: .purple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
