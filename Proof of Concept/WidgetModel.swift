//
//  WidgetModdel.swift
//  Proof of Concept
//
//  Created by Cahaya Ramadhan on 09/03/25.
//

import SwiftUI
import CoreGraphics

struct CodableColor: Codable {
    let red: Double
    let green: Double
    let blue: Double
    let opacity: Double

    init(_ color: Color) {
        if let cgColor = color.cgColor {
            let components = cgColor.components ?? [0, 0, 0, 1]
            self.red = Double(components[0])
            self.green = Double(components[1])
            self.blue = Double(components[2])
            self.opacity = components.count > 3 ? Double(components[3]) : 1
        } else {
            self.red = 0
            self.green = 0
            self.blue = 0
            self.opacity = 1
        }
    }

    var color: Color {
        Color(red: red, green: green, blue: blue, opacity: opacity)
    }
}
