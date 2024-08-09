//
//  QuestionView.swift
//  FlashMath2
//
//  Created by Eric on 09/08/2024.
//

import SwiftUI

struct QuestionView: View {
    @Environment(ViewModel.self) var viewModel

    let colors: [Color] = [.purple, .blue, .green, .pink, .orange].shuffled()

    let timer = Timer.publish(every: 1 / 30, on: .main, in: .common).autoconnect()

    @State private var timeUsed = 0.0

    var timeRemaining: Double {
        max(0, viewModel.timeAllowed - timeUsed)
    }

    var body: some View {
        VStack {
            Spacer()

            Text("Question \(viewModel.questionNumber)")
                .fontDesign(.rounded)
                .fontWeight(.black)

            Text(viewModel.questionText)
                .multilineTextAlignment(.center)
                .font(.largeTitle)

            ForEach(0..<viewModel.allAnswers.count, id: \.self) { index in
                Button {
                    select(viewModel.allAnswers[index])
                } label: {
                    Text(viewModel.allAnswers[index].formatted())
                }
                .buttonStyle(.question(color: colors[index]))
            }

            Spacer()
            Spacer()

            ZStack {
                Capsule()
                    .fill(.white.gradient)
                    .frame(height: 50)
                    .containerRelativeFrame(.horizontal) { value, _ in
                        value * timeRemaining / viewModel.timeAllowed
                    }

                Text("Time: " + timeRemaining.formatted(.number.precision(.fractionLength(2))))
                    .font(.largeTitle)
                    .monospacedDigit()
                    .blendMode(.difference)
            }
        }
        .padding(.horizontal)
        .onReceive(timer) { _ in
            timeUsed += 1 / 30

            if timeUsed >= viewModel.timeAllowed {
                viewModel.gameOver()
            }
        }
        .transition(.push(from: .trailing))
    }

    func select(_ number: Int) {
        timer.upstream.connect().cancel()

        withAnimation {
            viewModel.check(answer: number)
        }
    }
}

#Preview {
    QuestionView()
        .environment(ViewModel())
        .preferredColorScheme(.dark)
}
