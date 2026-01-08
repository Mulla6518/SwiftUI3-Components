//
//  GlassCard.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//


import SwiftUI

public struct GlassCard<Content: View>: View {
    private let content: Content
    private let radius: CGFloat

    public init(radius: CGFloat = CRadius.lg, @ViewBuilder content: () -> Content) {
        self.radius = radius
        self.content = content()
    }

    public var body: some View {
        content
            .padding(CSpacing.lg)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: radius, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: radius, style: .continuous)
                    .stroke(CColor.glassStroke, lineWidth: 1)
            )
            .shadow(color: CColor.shadow, radius: 24, y: 12)
    }
}
