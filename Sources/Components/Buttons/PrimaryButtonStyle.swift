//
//  PrimaryButtonStyle.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//


import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    public init() {}

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(CFont.body.weight(.semibold))
            .padding(.horizontal, 18)
            .padding(.vertical, 12)
            .background(CColor.brand)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: CRadius.md, style: .continuous))
            .opacity(configuration.isPressed ? 0.9 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
    }
}

public extension ButtonStyle where Self == PrimaryButtonStyle {
    static var primary: PrimaryButtonStyle { .init() }
}
