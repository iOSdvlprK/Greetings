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
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    var angularGradient: AngularGradient {
        AngularGradient(colors: [.pink, .purple, .blue, .orange, .yellow], center: .center, angle: .zero)
    }
    @State private var subtitle: LocalizedStringKey = "Exploring how views work"
    let subtitles: [LocalizedStringKey] = [
        "Exploring how views work",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge"
    ]
    
    var body: some View {
        HStack {
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
            
            Spacer()
            
            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
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
