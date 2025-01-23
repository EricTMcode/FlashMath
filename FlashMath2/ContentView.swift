//
//  ContentView.swift
//  FlashMath2
//
//  Created by Eric on 02/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayingView()
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
        .environment(ViewModel())
}
