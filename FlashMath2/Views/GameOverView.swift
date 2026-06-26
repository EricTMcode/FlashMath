//
//  GameOverView.swift
//  FlashMath2
//
//  Created by Eric on 26/06/2026.
//

import SwiftUI

struct GameOverView: View {
    @Environment(ViewModel.self) var viewModel

    var body: some View {
        VStack {
            Text("Game over!")
            Text("You scored \(viewModel.questionNumber - 1).")
            Button("Play Again", action: viewModel.end)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundGradient()
    }
}

#Preview {
    GameOverView()
        .environment(ViewModel())
}
