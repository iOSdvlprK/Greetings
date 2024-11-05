//
//  GreetingsApp.swift
//  Greetings
//
//  Created by joe on 10/25/24.
//

import SwiftUI

@main
struct GreetingsApp: App {
    @State private var language: String = "en"
    @State private var languageDirection: String = LEFT_TO_RIGHT
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirection)
        }
    }
}
