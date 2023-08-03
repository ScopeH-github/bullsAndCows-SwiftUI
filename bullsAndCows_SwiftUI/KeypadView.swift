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
            .monospaced(true)
            .monospacedDigit()
            .font(.title2)
            .frame(minWidth: 0, maxWidth: 65, minHeight: 0, maxHeight: 70)
    }
}

struct KeyPadButtonViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
    }
}

extension View {
    func keypadButtonViewStyle() -> some View {
        modifier(KeyPadButtonViewModifier())
    }
    func keypadLabelViewStyle() -> some View {
        modifier(KeyPadTextViewModifier())
    }
}

struct KeyPadView: View {
    var body: some View {
        Button (action: {}) {
            Image(systemName: "clear.fill")
                .keypadLabelViewStyle()
        }
        .keypadButtonViewStyle()
    }
}

struct KeyPadView_Previews: PreviewProvider {
    static var previews: some View {
        KeyPadView()
    }
}
