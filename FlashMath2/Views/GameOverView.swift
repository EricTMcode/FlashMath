//
//  GameOverView.swift
//  FlashMath2
//
//  Created by Eric on 23/01/2025.
//

import SwiftUI

struct GameOverView: View {
    @Environment(ViewModel.self) private var viewModel

    var body: some View {
        VStack {
            Text("Game over!")
                .titleStyle()
            Text("Yous scored: \(viewModel.questionNumber - 1).")
                .subtitleStyle()
            Button("Play Again", action: viewModel.end)
                .buttonStyle(.primary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundGradient()
    }
}

#Preview {
    GameOverView()
        .environment(ViewModel())
}
