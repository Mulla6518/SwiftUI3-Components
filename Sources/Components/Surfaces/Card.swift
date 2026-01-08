//
//  Card.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//

import SwiftUI

public struct Card<Content: View>: View {
    private let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        content.cardSurface()
    }
}
