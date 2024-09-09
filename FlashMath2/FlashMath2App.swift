//
//  FlashMath2App.swift
//  FlashMath2
//
//  Created by Eric on 02/08/2024.
//

import SwiftUI

@main
struct FlashMath2App: App {
    @State private var viewModel = ViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
                .environment(viewModel)
        }
    }
}
