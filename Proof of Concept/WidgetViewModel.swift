//
//  ViewModal.swift
//  Proof of Concept
//
//  Created by Cahaya Ramadhan on 09/03/25.
//

import SwiftUI

class WidgetViewModel: ObservableObject {
    @Published var placedWidgets: [any Widget] = []
    
    let availableWidgets: [Widget] = [
        Widget(color: .red),
        Widget(color: .blue),
        Widget(color: .green),
        Widget(color: .yellow),
        Widget(color: .purple)
    ]
}

