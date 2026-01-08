//
//  CardM.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//


import SwiftUI

public struct CardSurface: ViewModifier {
    let radius: CGFloat

    public init(radius: CGFloat = CRadius.lg) {
        self.radius = radius
    }

    public func body(content: Content) -> some View {
        content
            .padding(CSpacing.lg)
            .background(CColor.surface)
            .clipShape(RoundedRectangle(cornerRadius: radius, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: radius, style: .continuous)
                    .stroke(CColor.stroke, lineWidth: 1)
            )
            .shadow(color: CColor.shadow, radius: 16, y: 8)
    }
}

public extension View {
    func cardSurface(radius: CGFloat = CRadius.lg) -> some View {
        modifier(CardSurface(radius: radius))
    }
}
