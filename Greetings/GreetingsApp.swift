//
//  GreetingsApp.swift
//  Greetings
//
//  Created by joe on 10/25/24.
//

import SwiftUI
import TipKit

@main
struct GreetingsApp: App {
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight: .rightToLeft
    }
    
    var resetTip = true
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    // Configure and load your tips at app launch.
                    do {
                        if resetTip {
                            try Tips
                                .resetDatastore()
                        }
                        
                        try Tips
                                .configure([
                                    .displayFrequency(.immediate),
                                    .datastoreLocation(.applicationDefault)
                                ])
                    }
                    catch {
                        // Handle TipKit errors
                        print("Error initializing TipKit \(error.localizedDescription)")
                    }
                }
        }
    }
}
