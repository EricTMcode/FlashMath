//
//  MultipleQuestion.swift
//  FlashMath2
//
//  Created by Eric on 06/08/2024.
//

import Foundation

struct MultipleQuestion: Question {
    var questionText: String
    var correctAnswer: Int
    var allAnswers: [Int]

    init() {
        let allMultiples = (2...12).shuffled()
        let multiple = Int.random(in: 2...12)

        correctAnswer = Int.random(in: 1...12) * multiple
        questionText = "Multiple of \(multiple)?"

        allAnswers = (0...3).map { index in
            if multiple == 2 {
                allMultiples[index] * multiple + 1
            } else {
                allMultiples[index] * multiple + 2
            }
        }

        allAnswers.append(correctAnswer)
        allAnswers.shuffle()
    }


}
