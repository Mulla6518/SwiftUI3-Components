//
//  Chip.swift
//  SwiftUI3Components
//
//  Created by Farooq Mulla on 1/7/26.
//


import SwiftUI

public struct Chip: View {
    public enum Variant { case filled, outlined }

    private let title: String
    private let variant: Variant
    private let onTap: (() -> Void)?
    private let onRemove: (() -> Void)?

    public init(
        _ title: String,
        variant: Variant = .filled,
        onTap: (() -> Void)? = nil,
        onRemove: (() -> Void)? = nil
    ) {
        self.title = title
        self.variant = variant
        self.onTap = onTap
        self.onRemove = onRemove
    }

    public var body: some View {
        HStack(spacing: 8) {
            Text(title).font(CFont.caption.weight(.semibold))
            if let onRemove {
                Button {
                    onRemove()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.caption)
                        .opacity(0.8)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(background)
        .overlay(border)
        .clipShape(Capsule())
        .onTapGesture { onTap?() }
    }

    private var background: some View {
        Group {
            switch variant {
            case .filled: CColor.brand.opacity(0.12)
            case .outlined: Color.clear
            }
        }
    }

    private var border: some View {
        Capsule().stroke(CColor.stroke, lineWidth: variant == .outlined ? 1 : 0)
    }
}
