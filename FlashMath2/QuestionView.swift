//
//  QuestionView.swift
//  FlashMath2
//
//  Created by Eric on 23/01/2025.
//

import SwiftUI

struct QuestionView: View {
    @Environment(ViewModel.self) var viewModel

    let colors: [Color] = [.purple, .blue, .green, .pink, .orange].shuffled()

    var body: some View {
        VStack {
            Spacer()

            Text("Question \(viewModel.questionNumber)")
                .fontDesign(.rounded)
                .fontWeight(.black)

            Text(viewModel.questionText)
                .multilineTextAlignment(.center)
                .font(.largeTitle)

            ForEach(0..<viewModel.allAnswers.count, id: \.self) { i in
                Button {
                    select(viewModel.allAnswers[i])
                } label: {
                    Text(viewModel.allAnswers[i].formatted())
                }
                .buttonStyle(.question(color: colors[i]))
            }

            Spacer()
            Spacer()
        }
        .padding(.horizontal)
        .transition(.push(from: .trailing))
    }

    func select(_ number: Int) {
        withAnimation {
            viewModel.check(answer: number)
        }
    }
}

#Preview {
    QuestionView()
        .environment(ViewModel())
}
