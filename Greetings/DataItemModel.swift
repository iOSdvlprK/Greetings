//
//  DataItemModel.swift
//  Greetings
//
//  Created by joe on 10/27/24.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    
    let text: String
    let color: Color
}
