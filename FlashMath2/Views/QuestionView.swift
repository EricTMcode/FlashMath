//
//  QuestionView.swift
//  FlashMath2
//
//  Created by Eric on 26/06/2026.
//

import SwiftUI

struct QuestionView: View {
    var question = HowManyMultipesQuestion()

    var body: some View {
        VStack {
            Spacer()

            Text("Question 1")
                .fontDesign(.rounded)
                .fontWeight(.black)

            Text(question.questionText)
                .multilineTextAlignment(.center)
                .font(.largeTitle)

            ForEach(0..<question.allAnswers.count, id: \.self) { i in
                Button {

                } label: {
                    Text(question.allAnswers[i].formatted())
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
