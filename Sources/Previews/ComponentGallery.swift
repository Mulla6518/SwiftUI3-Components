//
//  ComponentGallery.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//

import SwiftUI
import SwiftUIFlowLayout

public struct ComponentGallery: View {
    @State private var name: String = ""
    @State private var chips: [String] = ["SwiftUI", "Design", "iOS"]

    public init() {}

    public var body: some View {
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
    }
}
