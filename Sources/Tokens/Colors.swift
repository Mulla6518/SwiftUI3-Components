//
//  Colors.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//


import SwiftUI

public enum CColor {
    public static let brand = Color.accentColor
    public static let background = Color(.systemBackground)
    public static let surface = Color(.secondarySystemBackground)
    public static let textPrimary = Color.primary
    public static let textSecondary = Color.secondary
    public static let stroke = Color.primary.opacity(0.12)
    public static let shadow = Color.black.opacity(0.18)

    // Glass-specific accent stroke (works well over materials)
    public static let glassStroke = Color.white.opacity(0.25)
}
