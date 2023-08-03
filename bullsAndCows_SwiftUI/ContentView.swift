//
//  ContentView.swift
//  bullsAndCows_SwiftUI
//
//  Created by Scope.H (Work) on 2023/08/01.
//

import SwiftUI

struct ContentView: View {
    @State var password: String
    var body: some View {
        VStack {
            Text("암호 입력")
                .font(.title3)
                .padding()
            
            KeyPadView()
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//      Ligt and Dark Mode Preview
        Group {
            ContentView(password: "123456")
            ContentView(password: "123456").preferredColorScheme(.dark)
        }
    }
}
