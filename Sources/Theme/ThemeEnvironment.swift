//
//  ThemeEnvironment.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//

import SwiftUI

private struct CThemeKey: EnvironmentKey {
    static let defaultValue: CTheme = CTheme()
}

public extension EnvironmentValues {
    var cTheme: CTheme {
        get { self[CThemeKey.self] }
        set { self[CThemeKey.self] = newValue }
    }
}

public extension View {
    func cTheme(_ theme: CTheme) -> some View {
        environment(\.cTheme, theme)
    }
}

