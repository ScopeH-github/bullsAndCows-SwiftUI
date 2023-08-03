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
            .font(.title)
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

struct NumberButtonView: View {
    @State var text: String
    @State var action: ()
    var body: some View {
        Button(action: {action}) {
            Text(text)
                .keypadLabelViewStyle()
        }
        .keypadButtonViewStyle()
    }
}

struct ActionButtonView: View {
    @State var symbolName: String
    @State var action: ()
    var body: some View {
        Button(action: {action}) {
            Image(systemName: symbolName)
                .keypadLabelViewStyle()
        }
        .keypadButtonViewStyle()
    }
}

struct KeyPadView: View {
    var body: some View {
        Grid {
            GridRow {
                NumberButtonView(text: "1")
                NumberButtonView(text: "2")
                NumberButtonView(text: "3")
            }
            GridRow {
                NumberButtonView(text: "4")
                NumberButtonView(text: "5")
                NumberButtonView(text: "6")
            }
            GridRow {
                NumberButtonView(text: "7")
                NumberButtonView(text: "8")
                NumberButtonView(text: "9")
            }
            GridRow {
                ActionButtonView(symbolName: "clear")
                NumberButtonView(text: "0")
                ActionButtonView(symbolName: "checkmark.square")
            }
        }
    }
}

struct KeyPadView_Previews: PreviewProvider {
    static var previews: some View {
        KeyPadView()
    }
}
