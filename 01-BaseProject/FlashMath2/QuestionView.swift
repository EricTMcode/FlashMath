//
//  QuestionView.swift
//  FlashMath2
//
//  Created by Eric on 07/08/2024.
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
