//
//  Theme.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//


import SwiftUI

public struct CTheme: Sendable {
    public var brand: Color
    public var cornerRadius: CGFloat
    public var padding: CGFloat

    public init(
        brand: Color = CColor.brand,
        cornerRadius: CGFloat = CRadius.md,
        padding: CGFloat = CSpacing.md
    ) {
        self.brand = brand
        self.cornerRadius = cornerRadius
        self.padding = padding
    }
}
