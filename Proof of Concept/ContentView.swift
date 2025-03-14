//
//  ContentView.swift
//  Proof of Concept
//
//  Created by Cahaya Ramadhan on 09/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = WidgetViewModel()

    var body: some View {
        VStack {
            Text("Welcome to Widget Layout System")
                .font(.title)
                .padding()

            DropZoneView(placedWidgets: $viewModel.placedWidgets)
                .frame(maxWidth: .infinity, maxHeight: 250)

            HStack {
                ForEach(viewModel.availableWidgets) { widget in
                    DraggableWidget(widget: widget)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    ContentView()
}

