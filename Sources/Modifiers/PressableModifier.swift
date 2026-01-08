//
//  PressableModifier.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//

import SwiftUI

public struct Pressable: ViewModifier {
    let scale: CGFloat
    let opacity: Double

    public init(scale: CGFloat = 0.98, opacity: Double = 0.92) {
        self.scale = scale
        self.opacity = opacity
    }

    public func body(content: Content) -> some View {
        content
            .buttonStyle(.plain)
            .scaleEffect(scale)
            .opacity(opacity)
    }
}

public extension View {
    func pressable(scale: CGFloat = 0.98, opacity: Double = 0.92) -> some View {
        modifier(Pressable(scale: scale, opacity: opacity))
    }
}
