//
//  DropZoneView.swift
//  Proof of Concept
//
//  Created by Cahaya Ramadhan on 09/03/25.
//

import SwiftUI

struct DropZoneView: View {
    @Binding var placedWidgets: [ColorWidget] // ✅ Concrete Type, No More Errors!

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .strokeBorder(style: StrokeStyle(lineWidth: 3, dash: [5]))
                .foregroundColor(.gray.opacity(0.5))
                .frame(height: 250)
                .overlay(
                    Text(placedWidgets.isEmpty ? "Drop widgets here" : "")
                        .foregroundColor(.gray)
                )

            ForEach(placedWidgets) { widget in
                Circle()
                    .fill(widget.color.color) // ✅ No more error: 'color' exists in ColorWidget
                    .frame(width: 50, height: 50)
                    .padding(5)
            }
        }
        .dropDestination(for: ColorWidget.self) { widgets, _ in
            placedWidgets.append(contentsOf: widgets)
            return true
        }
        .padding()
    }
}

