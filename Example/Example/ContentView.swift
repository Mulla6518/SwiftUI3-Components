//
//  ContentView.swift
//  Example
//
//  Created by Farooq Mulla on 1/7/26.
//

import SwiftUI
import SwiftUIFlowLayout
import SwiftUI3Components

struct ContentView: View {
    @State private var count = 0
    @State private var name = ""
    @State private var chips: [String] = ["SwiftUI", "Design", "iOS"]

        var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {

                    Text("SwiftUIComponents")
                        .font(.largeTitle.bold())

                    Card {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Buttons").font(CFont.title)
                            HStack {
                                Button("Primary") { }
                                    .buttonStyle(.primary)
                                Button("Glass") { }
                                    .glassButtonCompat()
                            }
                        }
                    }

                    GlassCard {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Glass Card").font(CFont.title)
                            Text("Uses material fallback on iOS < 26.")
                                .foregroundStyle(CColor.textSecondary)
                        }
                    }

                    VStack(alignment: .leading, spacing: 10) {
                        Text("Chips").font(CFont.title)
                        FlowLayout(mode: .scrollable, items: chips) { chip in
                            Chip(chip, variant: .filled, onRemove: {
                                chips.removeAll { $0 == chip }
                            })
                        }
                    }

                    VStack(alignment: .leading, spacing: 10) {
                        Text("Inputs").font(CFont.title)
                        FloatingLabelTextField("Name", text: $name)
                    }
                }
                .padding()
            }
//            VStack(spacing: 16) {
//                Text("Count: \(count)")
//                    .accessibilityIdentifier("countLabel")
//
//                Button("Increment") { count += 1 }
//                    .buttonStyle(.primary)
//                    .accessibilityIdentifier("incrementButton")
//
//                FloatingLabelTextField("Name", text: $name)
//                    .accessibilityIdentifier("nameField")
//            }
//            .padding()
        }
}

#Preview {
    ContentView()
}
