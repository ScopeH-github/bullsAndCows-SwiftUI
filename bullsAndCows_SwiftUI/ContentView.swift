//
//  ContentView.swift
//  bullsAndCows_SwiftUI
//
//  Created by Scope.H (Work) on 2023/08/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("BLANK").font(.largeTitle)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//      Ligt and Dark Mode Preview
        Group {
            ContentView()
            ContentView().preferredColorScheme(.dark)
        }
    }
}
