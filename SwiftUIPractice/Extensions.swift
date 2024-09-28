//
//  Extensions.swift
//  SwiftUIPractice
//
//  Created by patricia.martinez on 26/9/24.
//

import SwiftUI

extension View {
    var rectangleWithShadows: some View {
        modifier(RecuadroConSombra())
    }
}

extension UIDevice {
    static var topInsetSize: CGFloat {
        UIApplication
            .shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene}
            .flatMap(\.windows)
            .first { $0.isKeyWindow }?
            .safeAreaInsets
            .top ?? 0
    }
    
    static var bottomInsetSize: CGFloat {
        UIApplication
            .shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene}
            .flatMap(\.windows)
            .first { $0.isKeyWindow }?
            .safeAreaInsets
            .bottom ?? 0
    }
}
