//
//  QuestionView.swift
//  FlashMath2
//
//  Created by Eric on 23/01/2025.
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

            ForEach(0..<viewModel.allAnswers.count, id: \.self) { i in
                Button {

                } label: {
                    Text(viewModel.allAnswers[i].formatted())
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
