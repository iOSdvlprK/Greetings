//
//  MessagesView.swift
//  Greetings
//
//  Created by joe on 10/28/24.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello there!", color: .myGreen),
        .init(text: "Hi, welcome to Greetings!", color: .myGray),
        .init(text: "Are you ready to", color: .myYellow),
        .init(text: "start exploring?", color: .myRed),
        .init(text: "Boom.", color: .myPurple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
