//
//  TitleView.swift
//  Greetings
//
//  Created by joe on 10/28/24.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Exploring how views work")
                .font(.headline)
                .fontWeight(.thin)
        }
    }
}

#Preview {
    TitleView()
}
