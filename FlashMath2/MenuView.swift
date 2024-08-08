//
//  MenuView.swift
//  FlashMath2
//
//  Created by Eric on 08/08/2024.
//

import SwiftUI

struct MenuView: View {
    @AppStorage("LastScore") private var lastScore = 0
    @Environment(ViewModel.self) var viewModel

    var body: some View {
        VStack {
            Spacer()

            Text("FLASH MATH")
                .titleStyle()
            Text("Last Score: \(lastScore)")
                .subtitleStyle()
            Button("New Game", action: viewModel.start)
                .buttonStyle(.primary)

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
