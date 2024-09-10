//
//  MenuView.swift
//  FlashMath2
//
//  Created by Eric on 10/09/2024.
//

import SwiftUI

struct MenuView: View {
    @AppStorage("LastScore") private var lastScore = 0
    @Environment(ViewModel.self) var viewModel

    var body: some View {
        VStack {
            Spacer()
            Text("FLASH MATH")
            Text("Last Score: \(lastScore)")
            Button("New Game", action: viewModel.start)

            Spacer()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundGradient()
    }
}

#Preview {
    MenuView()
        .environment(ViewModel())
}
