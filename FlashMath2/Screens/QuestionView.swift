//
//  QuestionView.swift
//  FlashMath2
//
//  Created by Eric on 09/08/2024.
//

import SwiftUI

struct QuestionView: View {
    @Environment(ViewModel.self) var viewModel

    var body: some View {
        VStack {
            Spacer()

            Text("Question 1")
                .fontDesign(.rounded)
                .fontWeight(.black)

            Text(viewModel.questionText)
                .multilineTextAlignment(.center)
                .font(.largeTitle)

            ForEach(0..<viewModel.allAnswers.count, id: \.self) { index in
                Button {

                } label: {
                    Text(viewModel.allAnswers[index].formatted())
                }
            }

            Spacer()
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    QuestionView()
        .environment(ViewModel())
}
