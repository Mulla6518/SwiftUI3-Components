//
//  FloatingLabelTextField.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//


import SwiftUI

public struct FloatingLabelTextField: View {
    private let title: String
    @Binding private var text: String
    @FocusState private var focused: Bool

    public init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }

    public var body: some View {
        ZStack(alignment: .leading) {
            Text(title)
                .font(focused || !text.isEmpty ? .caption : .body)
                .foregroundStyle(focused ? CColor.brand : CColor.textSecondary)
                .offset(y: focused || !text.isEmpty ? -18 : 0)
                .scaleEffect(focused || !text.isEmpty ? 0.95 : 1.0, anchor: .leading)
                .animation(.easeOut(duration: 0.15), value: focused || !text.isEmpty)

            TextField("", text: $text)
                .focused($focused)
                .padding(.top, focused || !text.isEmpty ? 10 : 0)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .background(CColor.surface)
        .clipShape(RoundedRectangle(cornerRadius: CRadius.md, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: CRadius.md, style: .continuous)
                .stroke(focused ? CColor.brand.opacity(0.6) : CColor.stroke, lineWidth: 1)
        )
    }
}
