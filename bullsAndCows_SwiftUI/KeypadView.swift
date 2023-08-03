//
//  KeypadView.swift
//  bullsAndCows_SwiftUI
//
//  Created by Scope.H (Work) on 2023/08/03.
//

import SwiftUI

struct KeyPadTextViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .monospacedDigit()
            .frame(minWidth: 0, maxWidth: 70, minHeight: 0, maxHeight: 65)
    }
}

struct KeyPadButtonVireModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
    }
}
