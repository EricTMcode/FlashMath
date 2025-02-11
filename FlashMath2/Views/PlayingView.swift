//
//  PlayingView.swift
//  FlashMath2
//
//  Created by Eric on 23/01/2025.
//

import SwiftUI

struct PlayingView: View {
    @Environment(ViewModel.self) var viewModel

    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button("End Game", systemImage: "xmark.circle", action: viewModel.end)
                    .foregroundStyle(.white)
                    .labelStyle(.iconOnly)
                    .font(.largeTitle)
            }
            .padding(.horizontal)

            QuestionView()
                .id(viewModel.questionNumber)
        }
        .backgroundGradient()
    }
}

#Preview {
    PlayingView()
        .environment(ViewModel())
}
