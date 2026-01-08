//
//  GlassButtonStyleCompat.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//


import SwiftUI

public extension View {
    @ViewBuilder
    func glassButtonCompat() -> some View {
        if #available(iOS 26.0, *) {
            self.buttonStyle(.glass) // Liquid Glass built-in style
        } else {
            self.buttonStyle(.plain)
                .padding(.horizontal, 18)
                .padding(.vertical, 12)
                .background(.ultraThinMaterial)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(CColor.glassStroke, lineWidth: 1))
        }
    }
}
