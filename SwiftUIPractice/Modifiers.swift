//
//  Modifiers.swift
//  SwiftUIPractice
//
//  Created by patricia.martinez on 28/9/24.
//

import SwiftUI

struct RecuadroConSombra: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
            .padding()
    }
}
