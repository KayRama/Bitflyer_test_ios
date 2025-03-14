//
//  DraggableWidget.swift
//  Proof of Concept
//
//  Created by Cahaya Ramadhan on 09/03/25.
//

import SwiftUI

struct DraggableWidget: View {
    let widget: Widget

    var body: some View {
        Circle()
            .fill(widget.color)
            .frame(width: 50, height: 50)
            .shadow(radius: 5)
            .draggable(widget)
    }
}

