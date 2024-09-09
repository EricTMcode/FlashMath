//
//  QuestionView.swift
//  FlashMath2
//
//  Created by Eric on 09/09/2024.
//

import SwiftUI

struct QuestionView: View {
    var question = HowManyMultiplesQuestion()

    var body: some View {
        VStack {
            Spacer()

            Text("Question 1")
                .fontDesign(.rounded)
                .fontWeight(.black)

            Text(question.questionText)
                .multilineTextAlignment(.center)
                .font(.largeTitle)

            ForEach(0..<question.allAnswers.count, id: \.self) { index in
                Button {

                } label: {
                    Text(question.allAnswers[index].formatted())
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
}
