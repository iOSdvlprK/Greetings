//
//  BackgroundView.swift
//  Greetings
//
//  Created by joe on 10/28/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .myBlue1,
            .myBlue2
        ], startPoint: .topLeading, endPoint: .bottomTrailing)
        .opacity(0.7)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
