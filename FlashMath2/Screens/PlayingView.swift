//
//  PlayingView.swift
//  FlashMath2
//
//  Created by Eric on 09/08/2024.
//

import SwiftUI

struct PlayingView: View {
    @Environment(ViewModel.self) var viewModel
    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button("End Game", systemImage: "xmark.circle", action: viewModel.end)
                    .labelStyle(.iconOnly)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
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
